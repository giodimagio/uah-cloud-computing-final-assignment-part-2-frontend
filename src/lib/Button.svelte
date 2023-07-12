<script>
    export let endpoint;
    export let componentName;

    let microserviceVersion;
    let isLoading = false;
    let requestFailed = false;
    let counter = 0;

    async function getMicroservice() {
        isLoading = true;
        counter += 1;
        try {
            const response = await fetch(endpoint, {
                method: "GET",
                headers: {
                    Version: "v1",
                },
            });
            const data = await response.text();
            microserviceVersion = data;
            isLoading = false;
            console.log(microserviceVersion);
        } catch (error) {
            requestFailed = true;
            isLoading = false;
            console.error(error);
        }
    }
</script>

<button on:click={getMicroservice} disabled={isLoading}>
    {isLoading ? "Loading..." : ""}
    {componentName} clicked {counter}
    {counter >= 1 ? "times" : "time"}
</button>

{#if microserviceVersion}
    <p>{microserviceVersion}</p>
{:else if isLoading}
    <p>Wait for microservice response</p>
{:else if requestFailed}
    <p>Request failed. Try again please!</p>
{:else}
    <p>Press {componentName} to show microservice number & version please!</p>
{/if}

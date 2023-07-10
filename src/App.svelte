<script>
    import Button from "./lib/Button.svelte";

    /*let endpointMicroservice1 = "http://localhost:5010/api/v1/microservice1";
    let endpointMicroservice2 = "http://localhost:5020/api/v1/microservice2";
    let endpointMicroservice3 = "http://localhost:5030/api/v1/microservice3";*/

    /*let endpointMicroservice1 = "http://localhost/api/v1/microservice1";
    let endpointMicroservice2 = "http://localhost/api/v1/microservice2";
    let endpointMicroservice3 = "http://localhost/api/v1/microservice3";*/

    let endpointMicroservice1 =
        "http://microservice1:5001/api/v1/microservice1";
    let endpointMicroservice2 =
        "http://microservice2:5002/api/v1/microservice2";
    let endpointMicroservice3 =
        "http://microservice3:5003/api/v1/microservice3";
</script>

<main>
    <h1>UAH - Cloud Computing - Final Assignment - Part 2</h1>
    <h2>Backend - Flask | Frontend - Svelte</h2>
    <h3>Click one of the three buttons to check which microservice triggers</h3>
    <Button endpoint={endpointMicroservice1} componentName="Button1" />
    <Button endpoint={endpointMicroservice2} componentName="Button2" />
    <Button endpoint={endpointMicroservice3} componentName="Button3" />
</main>

<style>
</style>

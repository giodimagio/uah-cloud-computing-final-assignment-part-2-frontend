<script>
    import Button from "./lib/Button.svelte";

    let endpointMicroservice1 = "http://localhost:80/api/v1/microservice1";
    let endpointMicroservice2 = "http://localhost:80/api/v1/microservice2";
    let endpointMicroservice3 = "http://localhost:80/api/v1/microservice3";
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

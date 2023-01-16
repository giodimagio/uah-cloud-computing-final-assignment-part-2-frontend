<script>
    import Button from "./lib/Button.svelte";

    let endpointMicroservice1 = "http://127.0.0.1:5000/microservice-1";
    let endpointMicroservice2 = "http://127.0.0.1:5000/microservice-2";
    let endpointMicroservice3 = "http://127.0.0.1:5000/microservice-3";
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

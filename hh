import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

ExecutorService executor = Executors.newFixedThreadPool(2);

executor.submit(() -> {
    System.out.println("ExecutorService running");
});

executor.shutdown();

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

Callable<Integer> callableTask = () -> {
    return 10;
};

ExecutorService executorService = Executors.newSingleThreadExecutor();
Future<Integer> future = executorService.submit(callableTask);

try {
    Integer result = future.get(); // this will wait for the task to finish
    System.out.println("Future result: " + result);
} catch (InterruptedException | ExecutionException e) {
    e.printStackTrace();
} finally {
    executorService.shutdown();
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:w_shopapp_01/manger/counter_cubit.dart';
import 'package:w_shopapp_01/manger/counter_state.dart';

void main() {
  runApp(const PointContiner());
}

class PointContiner extends StatelessWidget {
  const PointContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text("point Continer"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "${BlocProvider.of<CounterCubit>(context).teamAPoint}",
                          style: const TextStyle(fontSize: 150),
                        ),
                        // add 1 point
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', buttomNumber: 1);
                          },
                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        // add 2 point
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', buttomNumber: 2);
                          },
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        // add 3 point
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'A', buttomNumber: 3);
                          },
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // column B
                  const SizedBox(
                    width: 50,
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "${BlocProvider.of<CounterCubit>(context).teamBPoint}",
                          style: const TextStyle(fontSize: 150),
                        ),
                        // add 1 point
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', buttomNumber: 1);
                          },
                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        // add 2 point
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', buttomNumber: 2);
                          },
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        // add 3 point
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: 'B', buttomNumber: 3);
                          },
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  fixedSize: const Size(150, 50),
                ),
                onPressed: () {},
                child: const Text(
                  "Result",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

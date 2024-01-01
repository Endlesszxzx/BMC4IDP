<<<<<<< HEAD
# README

This document shows how to reproduce the experimental results in the paper ***Precise and Efficient Verification for Interrupt-driven Programs via Heuristic and Reduced Partial-order Constraints***.

# BMC4IDP

**BMC4IDP** is developed as a practical formal verification tool for verifying interrupt-driven C programs. Leveraging the solid foundation provided by CBMC's efficient verification framework for C programs that do not include Interrupt Service Routines (ISRs), BMC4IDP enhances this system by incorporating additional modules to construct interrupt semanticsguided constraints and concurrency control constraints. Furthermore, we have optimized the process by reducing or simplifying partial order constraints, taking into account the spawnbefore relationships.

The **BMC4IDP** is implemented on top of the open-source model checker  [CBMC]((https://github.com/diffblue/cbmc)).



1. Download the compressed package and unpack it.

   * The general structure of the package is as follow:

   ```bash
   BMC4IDP/
   	|-- BMC4IDP-Ourtool/
   	|-- TEST_DIRS/
   	|-- EXPERIMENT_RESULTS.xlsx
   	|-- README.md
   	|-- REQUIREMENTS.md
   
   ```
   
2. Setup the experimental environment

   - Follow the installation steps of [COMPILING.md](https://github.com/diffblue/cbmc/blob/develop/COMPILING.md#what-architecture) in [CBMC]((https://github.com/diffblue/cbmc)) to install related dependencies.

      ```bash
   $ sudo apt-get install g++ gcc flex bison make git curl patch cmake
      ```

   **NOTICE**: By executing this command, you can install these packages for C++ and C compilers, lexer and parser generators, build tools, version control systems, data transfer tools, and patch application tools.

   - Configuring the environment:

   ```bash
   $ g++ --version && gcc --version && flex --version && bison --version && make --version && git --version && curl --version && patch --version && cmake --version
   ```

3. Set Cmake option

   - Set Run/Release Configuration to `cbmc`, and open Cmake profile to set `CMake options`.

   ```bash
   $ cmake -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON 
   ```

4. Perform the experiments on the TEST_DIRS

   - We use the`runAll.sh`script file to test all the test programs.
   - Find the `runAll.sh`  script file  in the TEST_DIR folder, and modify `CBMC_debug` in it to the `cmake-build/bin` directory in BMC4IDP-Ourtool.

   ```bash
   $ cd ./BMC4IDP-Ourtool/test_dir
   $ /bin/bash ./CBMC4IDP/test_dir/runAll.sh
   ```

   The output in the terminal would be:

```bash
user@user-virtual-machine:~$ /bin/bash ./BMC4IDP/BMC4IDP-Ourtool/test_di r/runAll.sh
testing blink_1 precise_simplest_module  1
file blink_1.c line 3387 function VirtualizeTimerC_0_fireTimers: function 'assert' is not declared
41.32user 0.53system 0:41.87elapsed 99%CPU (0avgtext+0avgdata 186260maxresident)k
0inputs+48outputs (0major+50578minor)pagefaults 0swaps
testing blink_1 begin_and_end_module  1
file blink_1.c line 3387 function VirtualizeTimerC_0_fireTimers: function 'assert' is not declared
40.41user 0.47system 0:40.96elapsed 99%CPU (0avgtext+0avgdata 198788maxresident)k
0inputs+48outputs (0major+53629minor)pagefaults 0swaps
testing blink_1 spawn_reduction_module  1
file blink_1.c line 3387 function VirtualizeTimerC_0_fireTimers: function 'assert' is not declared
23.32user 0.23system 0:23.56elapsed 99%CPU (0avgtext+0avgdata 147440maxresident)k
0inputs+40outputs (0major+39149minor)pagefaults 0swaps
testing blink_2 precise_simplest_module  1
file blink_2.c line 3388 function VirtualizeTimerC_0_fireTimers: function 'assert' is not declared
57.31user 0.56system 0:57.97elapsed 99%CPU (0avgtext+0avgdata 185740maxresident)k
0inputs+48outputs (0major+50378minor)pagefaults 0swaps


...
More details about the validation runs can be found in the output files in the corresponding test folders
```

**NOTICE**

1. We preset the time bound  limitation for each verification program to **3600 s** .
2. To meet the stated evaluation objectives, 24 interrupt-driven C programs, which are employed to check the reachability of error labels by `intAbs `or` iCBMC`, comprise the benchmark to evaluate our tool. All these programs are real-world applications such as control software, firmware, and device drivers.
3. In the runAll.sh we set different patterns to test ***Performance Comparison with State-of-the-art Tools***, ***Contribution of the Proposed Strategie*s**  ***In-deep Analysis of Efficiency Improvement respectively*** respectively and output the results respectively,so we can see that a program has been tested three times in the output information

=======
# README

This document shows how to reproduce the experimental results in the paper ***Precise and Efficient Verification for Interrupt-driven Programs via Heuristic and Reduced Partial-order Constraints***.

# BMC4IDP

**BMC4IDP** is developed as a practical formal verification tool for verifying interrupt-driven C programs. Leveraging the solid foundation provided by CBMC's efficient verification framework for C programs that do not include Interrupt Service Routines (ISRs), BMC4IDP enhances this system by incorporating additional modules to construct interrupt semanticsguided constraints and concurrency control constraints. Furthermore, we have optimized the process by reducing or simplifying partial order constraints, taking into account the spawnbefore relationships.

The **BMC4IDP** is implemented on top of the open-source model checker  [CBMC]((https://github.com/diffblue/cbmc)).



1. Download the compressed package and unpack it.

   * The general structure of the package is as follow:

   ```bash
   BMC4IDP/
   	|-- BMC4IDP-Ourtool/
   	|-- TEST_DIRS/
   	|-- EXPERIMENT_RESULTS.xlsx
   	|-- README.md
   	|-- REQUIREMENTS.md
   
   ```
   
2. Setup the experimental environment

   - Follow the installation steps of [COMPILING.md](https://github.com/diffblue/cbmc/blob/develop/COMPILING.md#what-architecture) in [CBMC]((https://github.com/diffblue/cbmc)) to install related dependencies.

      ```bash
   $ sudo apt-get install g++ gcc flex bison make git curl patch cmake
      ```

   **NOTICE**: By executing this command, you can install these packages for C++ and C compilers, lexer and parser generators, build tools, version control systems, data transfer tools, and patch application tools.

   - Configuring the environment:

   ```bash
   $ g++ --version && gcc --version && flex --version && bison --version && make --version && git --version && curl --version && patch --version && cmake --version
   ```

3. Set Cmake option

   - Set Run/Release Configuration to `cbmc`, and open Cmake profile to set `CMake options`.

   ```bash
   $ cmake -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON 
   ```

4. Perform the experiments on the TEST_DIRS

   - We use the`runAll.sh`script file to test all the test programs.
   - Find the `runAll.sh`  script file  in the TEST_DIR folder, and modify `CBMC_debug` in it to the `cmake-build/bin` directory in BMC4IDP-Ourtool.

   ```bash
   $ cd ./BMC4IDP-Ourtool/test_dir
   $ /bin/bash ./CBMC4IDP/test_dir/runAll.sh
   ```

   The output in the terminal would be:

```bash
user@user-virtual-machine:~$ /bin/bash ./BMC4IDP/BMC4IDP-Ourtool/test_di r/runAll.sh
testing blink_1 precise_simplest_module  1
file blink_1.c line 3387 function VirtualizeTimerC_0_fireTimers: function 'assert' is not declared
41.32user 0.53system 0:41.87elapsed 99%CPU (0avgtext+0avgdata 186260maxresident)k
0inputs+48outputs (0major+50578minor)pagefaults 0swaps
testing blink_1 begin_and_end_module  1
file blink_1.c line 3387 function VirtualizeTimerC_0_fireTimers: function 'assert' is not declared
40.41user 0.47system 0:40.96elapsed 99%CPU (0avgtext+0avgdata 198788maxresident)k
0inputs+48outputs (0major+53629minor)pagefaults 0swaps
testing blink_1 spawn_reduction_module  1
file blink_1.c line 3387 function VirtualizeTimerC_0_fireTimers: function 'assert' is not declared
23.32user 0.23system 0:23.56elapsed 99%CPU (0avgtext+0avgdata 147440maxresident)k
0inputs+40outputs (0major+39149minor)pagefaults 0swaps
testing blink_2 precise_simplest_module  1
file blink_2.c line 3388 function VirtualizeTimerC_0_fireTimers: function 'assert' is not declared
57.31user 0.56system 0:57.97elapsed 99%CPU (0avgtext+0avgdata 185740maxresident)k
0inputs+48outputs (0major+50378minor)pagefaults 0swaps


...
More details about the validation runs can be found in the output files in the corresponding test folders
```

**NOTICE**

1. We preset the time bound  limitation for each verification program to **3600 s** .
2. To meet the stated evaluation objectives, 24 interrupt-driven C programs, which are employed to check the reachability of error labels by `intAbs `or` iCBMC`, comprise the benchmark to evaluate our tool. All these programs are real-world applications such as control software, firmware, and device drivers.
3. In the runAll.sh we set different patterns to test ***Performance Comparison with State-of-the-art Tools***, ***Contribution of the Proposed Strategie*s**  ***In-deep Analysis of Efficiency Improvement respectively*** respectively and output the results respectively,so we can see that a program has been tested three times in the output information

>>>>>>> 89231674a64a5df06afd8f0e9cb197d3a093bee9

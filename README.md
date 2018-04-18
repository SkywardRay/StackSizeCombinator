# StackSizeCombinator

A combinator that takes an item signal as input and multiplies it by the stack size of that item.

## Usage

Connect a circuit network wire to the input side of the combinator and select the item you want to get the stack size of in the combinator gui, the combinator will fill in the rest by itself.

Selecting Each as the input signal will make the combinator select the first item signal it finds from the circuit network. As far as i know it is not possible to pass a different stack size value to every individual signal using Each as input. This seems like a good compromise because you can set the Each signal in a blueprint and the combinator will automatically pick the first signal it receives.

## Example usage

I like to have my train station only enable itself when there are enough resources to make the trip worth it. Normally I have to set a value manually since I like to set it at around 75% of the maximum capacity. But the chests at the station have a different maximum capacity for every resource they contain due to the difference in stack size. With the Stack Size Combinator I can calculate the maximum and I can use the same blueprint for every train station that offers a resource.

## Known Issues

- The GUI does not update when the filters change while it is open. It is using the standard arithmetic combinator GUI and as far as I know there is no way for a mod to force a GUI to update/close. When you close and reopen the GUI it shows the correct values though
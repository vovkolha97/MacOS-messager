import Foundation

print("Enter the phone number")
let number = readLine() ?? ""

print("Enter your message")
let message = readLine() ?? ""

let smsURL = """
https://iosfaststart.com/api/send-sms?\
token=5c59e2ca7566a7001577d8e3\
&to=\(number)\
&text=\(message.replacingOccurrences(of: " ", with: "+" ))
"""

    if number != "", message != "", let smsApiURL = URL(string: smsURL) {
    let response = try? String(contentsOf: smsApiURL)
        print(response ?? "Something went wrong")
    } else {
        print("Error! You have to enter the phone number and the message!")
}

import SwiftUI

struct SaveToKeyChainButton: View {
    let addContent: String = "Add to KeyChain" // Button text for adding
    let deleteContent: String = "Delete from KeyChain" // Button text for deleting
    let key: String = "YourKey"
    let keyChainService = KeyChainService(accessGroup: "your.access.group")
    @State private var myValue: String = "My value stored on key chain"
    @State private var inputValue: String = "New value to save" // Placeholder for new value to save

    var body: some View {
        VStack(spacing: 20) {
            Text(myValue)
                .padding()
            TextField("Enter value to save", text: $inputValue)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action: saveToKeyChain) {
                Text(addContent)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            Button(action: deleteFromKeyChain) {
                Text(deleteContent)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .onAppear(perform: loadFromKeyChain)
    }
    
    private func loadFromKeyChain() {
        // Load the initial value from the KeyChain
        if let loadedValue = keyChainService.load(forKey: key) {
            myValue = loadedValue
        } else {
            myValue = "No value stored"
        }
    }
    
    private func saveToKeyChain() {
        let saveStatus = keyChainService.save(value: inputValue, forKey: key)
        if saveStatus == errSecSuccess {
            myValue = inputValue
            print("Value saved successfully")
        } else {
            print("Failed to save value with status: \(saveStatus)")
        }
    }
    
    private func deleteFromKeyChain() {
        let deleteStatus = keyChainService.delete(forKey: key)
        if deleteStatus == errSecSuccess {
            myValue = "No value stored"
            print("Item deleted successfully")
        } else {
            print("Failed to delete value with status: \(deleteStatus)")
        }
    }
}

struct SaveToKeyChainButton_Previews: PreviewProvider {
    static var previews: some View {
        SaveToKeyChainButton()
    }
}

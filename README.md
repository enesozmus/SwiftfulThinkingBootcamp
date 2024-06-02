# 🚧 SwiftUI
Kaynak/Reference: [Swiftful Thinking](https://www.youtube.com/@SwiftfulThinking/videos)

> - ⚙️ [Texts](./SwiftfulThinkingBootcamp/TextBootcamp.swift)
>  > Text(), .font(), .system(), .fontWeight(), .foregroundColor(), .multilineTextAlignment(), .uppercased(), .italic(), .underline(), .strikethrough(), .baselineOffset(), .kerning(), .minimumScaleFactor()
> - ⚙️ [Shapes](./SwiftfulThinkingBootcamp/ShapesBootcamp.swift)
>  > Capsule(style: ), Circle(), Ellipse(), RoundedRectangle(cornerRadius: ), .fill(), .foregroundColor(), .stroke(), trim()
> - ⚙️ [Colors](./SwiftfulThinkingBootcamp/ColorsBootcamp.swift)
>  > Color(), Color(uiColor: ), Color("_colorSet"), #colorLiteral, .opacity()
> - ⚙️ [Gradients](./SwiftfulThinkingBootcamp/GradientsBootcamp.swift)
>  > .foregroundStyle(), .color.gradient, LinearGradient(), RadialGradient(), AngularGradient(), stride().map{ Color() }, gradient: Gradient(colors: ...)
> - ⚙️ [Icons](./SwiftfulThinkingBootcamp/IconsBootcamp.swift)
>  > Image(systemName: ""), .font(), .foregroundColor(), .resizable(), .scaledToFit(), .scaledToFill(), .aspectRatio(contentMode: ), .clipped(), .renderingMode(), .symbolRenderingMode(), .foregroundStyle( , , , ,), .foregroundStyle(.linearGradient, .linearGradient, .linearGradient), cmd + shift + l
> - ⚙️ [Images](./SwiftfulThinkingBootcamp/ImagesBootcamp.swift)
>  > Image(""), .resizable(), .scaledToFit(), .scaledToFill(), .frame(width: , height: ), .clipped(), .renderingMode(), .foregroundColor(),  .clipShape()
> - ⚙️ [Frames and Alignments](./SwiftfulThinkingBootcamp/FrameBootcamp1.swift)
>  > the offered size, frame(minWidth: , idealWidth: , maxWidth: , minHeight: , idealHeight: , maxHeight: , alignment: )
> - ⚙️ [Background and Overlays](./SwiftfulThinkingBootcamp/BackgroundAndOverlaysBootcamp.swift)
>  > .background(), .overlay()
> - ⚙️ [Stacks](./SwiftfulThinkingBootcamp/StacksBootcamp.swift)
>  > VStack, HStack, ZStack, default spacing, alignment, spacing
> - ⚙️ [Padding](./SwiftfulThinkingBootcamp/PaddingBootcamp.swift)
>  > .padding(), .all, .vertical, .horizontal, .leading etc. 
> - ⚙️ [Spacer](./SwiftfulThinkingBootcamp/SpacerBootcamp.swift)
>  > spacer(), "an adaptive view with no content" that expands as much as it can 
> - ⚙️ [Initializers of views and the use of enum](./SwiftfulThinkingBootcamp/InitializersBootcamp.swift)
>  > init(), self, enum
> - ⚙️ [ForEach](./SwiftfulThinkingBootcamp/ForEachBootcamp.swift)
>  > ForEach() { }, 0..<10, . index in, \(index), [index], .indices
> - ⚙️ [ScrollView](./SwiftfulThinkingBootcamp/ScrollViewBootcamp.swift)
>  > ScrollView(), .vertical, .horizontal, showsIndicators
> - ⚙️ [Grid](./SwiftfulThinkingBootcamp/GridBootcamp.swift)
>  > Lazy Horizontal Grid, Lazy Horizontal Stack, columns, alignment, spacing, pinnedViews, [GridItem], size, .adaptive, .fixed, .flexible, spacing, alignment
> - ⚙️ [Buttons](./SwiftfulThinkingBootcamp/ButtonsBootcamp.swift)
>  > Button(""){}, Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {}), .accentColor(), padding(), .padding(.horizontal, ), .background(), .stroke()
> - ⚙️ [@State](./SwiftfulThinkingBootcamp/StateBootcamp.swift)
>  > @State
> - ⚙️ [Extracting functions and subviews](./SwiftfulThinkingBootcamp/ExtractingBootcamp.swift)
>  > func name(){...}, :some View, @State, struct name: View, @Binding
> - ⚙️ [@Binding](./SwiftfulThinkingBootcamp/BindingBootcamp.swift)
>  > Sharing state with subviews, @State, @Binding, $
> - ⚙️ [Logical conditional expressions](./SwiftfulThinkingBootcamp/ConditionalLogicBootcamp.swift)
>  > @State, Bool, .toggle(), .description, if{}else{}, .task { }, ProgressView()
> - ⚙️ [Ternary Operator](./SwiftfulThinkingBootcamp/TernaryBootcamp.swift)
>  > ... ? ... : ...
> - ⚙️ [Animations](./SwiftfulThinkingBootcamp/AnimationBootcamp.swift)
>  > withAnimation() {}, Declarative Animation Syntax, State and Animation, Animated Properties, Animation Parameters, Nested Animations, Animation Types, Custom Animations, Transitions, Gesture-based Animation, Animating View Transitions
> - ⚙️ [Timing Curves 1](./SwiftfulThinkingBootcamp/TimingCurvesBootcamp.swift)
>  > .default, .linear, .easeIn, .easeOut, .easeInOut
> - ⚙️ [Timing Curves 2](./SwiftfulThinkingBootcamp/TimingCurvesBootcamp2.swift)
>  > .default, .linear, .easeIn, .easeOut, .easeInOut, .spring(), .interpolatingSpring(), .timingCurve()
> - ⚙️ [Transitions](./SwiftfulThinkingBootcamp/TransitionsBootcamp.swift)
>  > Default Transition, Built-in Transition Types, Custom Transitions, Combined Transitions, AnyTransition, .opacity, .scale, .slide, .move(edge:), .asymmetric
> - ⚙️ [Sheets and FullScreenCovers](./SwiftfulThinkingBootcamp/SheetsBootcamp.swift)
>  > @State, .toggle(), .sheet(), fullScreenCover() isPresented, content, @Environment(\.dismiss), dismiss()
> - ⚙️ [Popovers](./SwiftfulThinkingBootcamp/PopoverBootcamp.swift)
>  > .sheet(), fullScreenCover(), .transition(), withAnimation() {}, .animation(), .offset()
> - ⚙️ [Navigation](./SwiftfulThinkingBootcamp/NavigationBootcamp.swift)
>  > Navigation, NavigationStack{}, NavigationLink(), .navigationTitle(""), .navigationBarTitleDisplayMode(), .navigationDestination(for:destination:), NavigationDestination for a boolean @state variable, NavigationStack path parameter, NavigationPath, .toolbar{}, ToolbarItemGroup(){}, NavigationSplitView
> - ⚙️ [List](./SwiftfulThinkingBootcamp/ListBootcamp.swift)
>  > [List], List {}, Section(){}, .onDelete(), .onMove(), .listRowBackground(), .listStyle()
> - ⚙️ [Alerts](./SwiftfulThinkingBootcamp/AlertBootcamp.swift)
>  > Alert(), title:, message:, dismissButton:, primaryButton:, secondaryButton:, action:
> - ⚙️ [Confirmation Dialog](./SwiftfulThinkingBootcamp/ConfirmationDialogBootcamp.swift)
>  > confirmationDialog(), titleKey:, isPresented, titleVisibility, data, actions, message
> - ⚙️ [ContextMenu](./SwiftfulThinkingBootcamp/ContextMenuBootcamp.swift)
>  > contextMenu(menuItems:), Label("...", systemImage: "...")
> - ⚙️ [TextField](./SwiftfulThinkingBootcamp/TextFieldBootcamp.swift)
>  > TextField(titleKey:, text:, prompt: )
> - ⚙️ [TextEditor](./SwiftfulThinkingBootcamp/TextEditorBootcamp.swift)
>  > TextEditor(text:), .scrollContentBackground(.hidden), .clipShape(.rect(cornerRadii:)), .colorMultiply(Color(#colorLiteral()))
> - ⚙️ [Toggle](./SwiftfulThinkingBootcamp/ToggleBootcamp.swift)
>  > Toggle(titleKey:, isOn:, label: ), Styling toggles, .toggleStyle(.switch), .toggleStyle(.button)
> - ⚙️ [Picker](./SwiftfulThinkingBootcamp/PickerBootcamp.swift)
>  > Picker(), selection:, label:, content:, .tag(), .pickerStyle()
> - ⚙️ [ColorPicker](./SwiftfulThinkingBootcamp/ColorPickerBootcamp.swift)
>  > ColorPicker( titleKey:, selection: , supportsOpacity: , label: )
> - ⚙️ [DatePicker](./SwiftfulThinkingBootcamp/DatePickerBootcamp.swift)
>  > Date(), DateFormatter(), Calendar, ClosedRange\<Date>, DateComponents, DatePicker(titleKey:, selection:, in:, displayedComponents:, label: ), .datePickerStyle()
> - ⚙️ [Stepper](./SwiftfulThinkingBootcamp/StepperBootcamp.swift)
>  > Stepper(titleKey:, value:, step:, format:, label:, onEditingChanged: ), CGFloat, onIncrement:{}, onDecrement:{}
> - ⚙️ [Slider](./SwiftfulThinkingBootcamp/SliderBootcamp.swift)
>  > Slider(value:, in:, step:, onEditingChanged:, minimumValueLabel:, maximumValueLabel:, label: ), Text(String(format: "%.2f", sliderValue))
> - ⚙️ [TabView](./SwiftfulThinkingBootcamp/TabViewBootcamp.swift)
>  > TabView(selection:, content: ), .badge(), .tabItem{}, .tag(), .onAppear(){}, Label(), .tabViewStyle()
> - ⚙️ [DarkMode](./SwiftfulThinkingBootcamp/DarkModeBootcamp.swift)
>  > .preferredColorScheme(), colors
> - ⚙️ [Documentation](./SwiftfulThinkingBootcamp/DocumentationBootcamp.swift)
>  > Adding documentation, markups, and comments, code folding, code blocks
> - ⚙️ [OnAppear and OnDisappear](./SwiftfulThinkingBootcamp/OnAppearAndOnDisappearBootcamp.swift)
>  > onAppear(perform: {}), onDisappear(perform: {})
> - ⚙️ [Unwrapping optionals safely](./SwiftfulThinkingBootcamp/IfLetGuardBootcamp.swift)
>  > if let __ = __ { } else { },  guard let __ = __ else { }
> - ⚙️ [TapGesture](./SwiftfulThinkingBootcamp/TapGestureBootcamp.swift)
>  > Gesture, TapGesture().onEnded{}, .gesture(), .onTapGesture{}
> - ⚙️ [LongPressGesture](./SwiftfulThinkingBootcamp/LongPressGestureBootcamp.swift)
>  > Gesture, @GestureState, LongPressGesture(), .updating(){}, .onChanged{}, .onEnded{}, .gesture(), .onLongPressGesture(){}, { (isPressing) in ...}, perform:{}, .onTapGesture{}
> - ⚙️ [MagnifyGesture](./SwiftfulThinkingBootcamp/MagnifyGestureBootcamp.swift)
>  > Gesture, @GestureState, MagnifyGesture(), .updating(){}, .onChanged{},, .onEnded{}, .gesture(), value.magnification
> - ⚙️ [RotateGesture](./SwiftfulThinkingBootcamp/RotateGestureBootcamp.swift)
>  > Gesture, Angle, RotateGesture(), .onChanged{}, .onEnded{}, .gesture(), .rotationEffect()
> - ⚙️ [DragGesture](./SwiftfulThinkingBootcamp/DragGestureBootcamp.swift)
>  > Gesture, DragGesture(), .onChanged{}, .onEnded{}, .gesture(), value.translation, .scaleEffect(), .rotationEffect(), Angle, .offset()
> - ⚙️ [ScrollViewReader](./SwiftfulThinkingBootcamp/ScrollViewReaderBootcamp.swift)
>  > ScrollViewReader, proxy, Namespace, .scrollTo(), .id() 
> - ⚙️ [GeometryReader](./SwiftfulThinkingBootcamp/GeometryReader)
>  > Deeper Understanding
> - ⚙️ [Multiple Sheets](./SwiftfulThinkingBootcamp/MultipleSheetsBootcamp.swift)
>  > .sheet(isPresented:content:), .sheet(item:content:)
> - ⚙️ [Mask](./SwiftfulThinkingBootcamp/MaskBootcamp.swift)
>  > Creating a 5-star rating button by using GeometryReader and .mask()
> - ⚙️ [Sound Effects](./SwiftfulThinkingBootcamp/Sounds/SoundEffectsBootcamp.swift)
>  > AVKit Framework
> - ⚙️ [Haptics](./SwiftfulThinkingBootcamp/HapticsBootcamp.swift)
>  > Good vibrations!
> - ⚙️ [Local Notifications](./SwiftfulThinkingBootcamp/LocalNotificationsBootcamp.swift)
>  > UserNotifications and CoreLocation Frameworks
> - ⚙️ [Alignment Guides](./SwiftfulThinkingBootcamp/AlignmentGuides)
>  > Deeper Understanding
> - ⚙️ [VisualEffect](./SwiftfulThinkingBootcamp/VisualEffectBootcamp.swift)
>  > .visualEffect { content, geometry in ...content }

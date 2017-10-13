class CalcComponent
  include Hyperloop::Component::Mixin

  state x: 0
  state y: 0

  render(DIV) do
    make_input :x, state.x
    SPAN { "+" }
    make_input :y, state.y
    SPAN { "=#{state.x + state.y}" }
  end

  private

  def make_input(key, value)
    INPUT { value }.on(:change) { |e| mutate.__send__(key, (e.target.value.to_i || 0)) }
  end
end

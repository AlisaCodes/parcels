class Parcel
  define_method(:initialize) do |height, width, length, weight|
    @height = height
    @width = width
    @length = length
    @weight = weight
    @volume = height * width * length
  end

  define_method(:volume) do
    @volume
  end

  define_method(:cost_to_ship) do |distance, speed|
    base_price = 5
    running_total = @weight * 1.5
    multiplier = 1

    if @volume > 40
      multiplier += 0.5
    end

    if speed == 2
      multiplier += 0.5
    end

    if distance > 50
      multiplier += 1
    end

    running_total = running_total * multiplier

  end
end

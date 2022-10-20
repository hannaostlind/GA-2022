=begin
#Reseplaneraren

#Provides access to Västtrafik journey planner

OpenAPI spec version: 1.10.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.28

=end

require 'date'

module SwaggerClient
  class Origin
    # Route index of a stop/station. Can be used as a reference of the stop/station in a journeyDetail response
    attr_accessor :route_idx

    attr_accessor :value

    # Will be set to true if departure/arrival at this stop is cancelled
    attr_accessor :cancelled

    # Track information, if available
    attr_accessor :track

    # Realtime track information, if available
    attr_accessor :rt_track

    # The attribute type specifies the type of location. Valid values are ST (stop/station), ADR (address) or POI (point of interest)
    attr_accessor :type

    # Date in format YYYY-MM-DD
    attr_accessor :date

    attr_accessor :notes

    # ID of this stop
    attr_accessor :id

    # Realtime date in format YYYY-MM-DD, if available
    attr_accessor :rt_date

    # Time in format HH:MM
    attr_accessor :time

    # Date in format YYYY-MM-DD.  Based on the direct travel time
    attr_accessor :directdate

    # Contains the name of the location
    attr_accessor :name

    # Realtime time in format HH:MM if available
    attr_accessor :rt_time

    # Direct Time format HH:MM. Based on the direct travel time
    attr_accessor :directtime

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'route_idx' => :'routeIdx',
        :'value' => :'$',
        :'cancelled' => :'cancelled',
        :'track' => :'track',
        :'rt_track' => :'rtTrack',
        :'type' => :'type',
        :'date' => :'date',
        :'notes' => :'Notes',
        :'id' => :'id',
        :'rt_date' => :'rtDate',
        :'time' => :'time',
        :'directdate' => :'directdate',
        :'name' => :'name',
        :'rt_time' => :'rtTime',
        :'directtime' => :'directtime'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'route_idx' => :'String',
        :'value' => :'String',
        :'cancelled' => :'BOOLEAN',
        :'track' => :'String',
        :'rt_track' => :'String',
        :'type' => :'String',
        :'date' => :'Date',
        :'notes' => :'Notes',
        :'id' => :'String',
        :'rt_date' => :'Date',
        :'time' => :'String',
        :'directdate' => :'Date',
        :'name' => :'String',
        :'rt_time' => :'String',
        :'directtime' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'routeIdx')
        self.route_idx = attributes[:'routeIdx']
      end

      if attributes.has_key?(:'$')
        self.value = attributes[:'$']
      end

      if attributes.has_key?(:'cancelled')
        self.cancelled = attributes[:'cancelled']
      end

      if attributes.has_key?(:'track')
        self.track = attributes[:'track']
      end

      if attributes.has_key?(:'rtTrack')
        self.rt_track = attributes[:'rtTrack']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'Notes')
        self.notes = attributes[:'Notes']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'rtDate')
        self.rt_date = attributes[:'rtDate']
      end

      if attributes.has_key?(:'time')
        self.time = attributes[:'time']
      end

      if attributes.has_key?(:'directdate')
        self.directdate = attributes[:'directdate']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'rtTime')
        self.rt_time = attributes[:'rtTime']
      end

      if attributes.has_key?(:'directtime')
        self.directtime = attributes[:'directtime']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @value.nil?
        invalid_properties.push('invalid value for "value", value cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @time.nil?
        invalid_properties.push('invalid value for "time", time cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @value.nil?
      return false if @type.nil?
      return false if @date.nil?
      return false if @time.nil?
      return false if @name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          route_idx == o.route_idx &&
          value == o.value &&
          cancelled == o.cancelled &&
          track == o.track &&
          rt_track == o.rt_track &&
          type == o.type &&
          date == o.date &&
          notes == o.notes &&
          id == o.id &&
          rt_date == o.rt_date &&
          time == o.time &&
          directdate == o.directdate &&
          name == o.name &&
          rt_time == o.rt_time &&
          directtime == o.directtime
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [route_idx, value, cancelled, track, rt_track, type, date, notes, id, rt_date, time, directdate, name, rt_time, directtime].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end

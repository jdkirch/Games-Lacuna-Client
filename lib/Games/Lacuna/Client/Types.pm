###################################################
#
# This is a generated file DO NOT EDIT
# generated by data/build_types.pl using data/Types.tt2
#
###################################################
#
# Any structural changes should be made to data/Types.tt2
#
# Any informational changes should be made to one of:
#
#     data/types.yml
#     data/building.yml
#
# All changes should be followed by running data/build_types.pl
#
###################################################

package Games::Lacuna::Client::Types;

use strict;
use warnings;
use List::MoreUtils qw(any);

require Exporter;

our @ISA = qw(Exporter);
our @EXPORT = qw( food_types ore_types ship_types ship_attribute_types get_tags tag_list meta_building_list meta_type meta_type_list ship_tags_list ship_tags ship_type_human );
our %EXPORT_TAGS = (
    list     => [qw( food_types ore_types ship_types ship_attribute_types )],
    resource => [qw( food_types ore_types )],
    tag      => [qw( get_tags tag_list )],
    meta     => [qw( meta_building_list meta_type meta_type_list )],
    ship     => [qw( ship_types ship_attribute_types ship_tags_list ship_tags ship_type_human )],
    all      => [@EXPORT],
);

{
    my @food = qw( algae apple bean beetle bread burger cheese chip cider corn fungus lapis meal milk pancake pie potato root shake soup syrup wheat );
    sub food_types {
        return @food;
    }
}

{
    my @ore = qw( anthracite bauxite beryl chalcopyrite chromite fluorite galena goethite gold gypsum halite kerogen magnetite methane monazite rutile sulfur trona uraninite zircon );
    sub ore_types {
        return @ore;
    }
}


{
    my @ship_attribute = qw( speed hold_size combat stealth );
    sub ship_attribute_types {
        return @ship_attribute;
    }
}


{
    my %meta_types = (
        command => [qw(
            Archaeology
            Capitol
            CloakingLab
            Development
            Embassy
            Espionage
            GasGiantLab
            GasGiantPlatform
            GeneticsLab
            IBS
            Intelligence
            MercenariesGuild
            MissionCommand
            MunitionsLab
            Network19
            Observatory
            Oversight
            Park
            Parliament
            PilotTraining
            PlanetaryCommand
            PoliceStation
            Propulsion
            SAW
            Security
            Shipyard
            SpacePort
            SSLA
            SSLB
            SSLC
            SSLD
            StationCommand
            Stockpile
            SubspaceSupplyDepot
            TerraformingLab
            TerraformingPlatform
            ThemePark
            Trade
            Transporter
            University
            Warehouse
        )],
        energy => [qw(
            Fission
            Fusion
            Geo
            HydroCarbon
            Singularity
            WasteEnergy
        )],
        food => [qw(
            Algae
            Apple
            Bean
            Beeldeban
            Bread
            Burger
            Cheese
            Chip
            Cider
            Corn
            CornMeal
            Dairy
            Denton
            Lapis
            Malcud
            Pancake
            Pie
            Potato
            Shake
            Soup
            Syrup
            Wheat
        )],
        glyph => [qw(
            AlgaePond
            AmalgusMeadow
            BeeldebanNest
            CitadelOfKnope
            CrashedShipSite
            Crater
            DentonBrambles
            EssentiaVein
            GeoThermalVent
            GratchsGauntlet
            Grove
            HallsOfVrbansk
            InterDimensionalRift
            KalavianRuins
            KasternsKeep
            Lagoon
            Lake
            LapisForest
            LibraryOfJith
            MalcudField
            MassadsHenge
            NaturalSpring
            OracleOfAnid
            PantheonOfHagness
            Ravine
            RockyOutcrop
            Sand
            TempleOfTheDrajilites
            TheDillonForge
            Volcano
        )],
        happiness => [qw(
            Entertainment
            GreatBallOfJunk
            JunkHengeSculpture
            LuxuryHousing
            MetalJunkArches
            PyramidJunkSculpture
            SpaceJunkPark
        )],
        ore => [qw(
            Mine
            MiningMinistry
            OreRefinery
            WasteDigester
        )],
        storage => [qw(
            DistributionCenter
            EnergyReserve
            FoodReserve
            OreStorage
            SupplyPod
            WasteSequestration
            WaterStorage
        )],
        waste => [qw(
            DeployedBleeder
            WasteRecycling
            WasteTreatment
        )],
        water => [qw(
            AtmosphericEvaporator
            WaterProduction
            WaterPurification
            WaterReclamation
        )],
    );

    sub meta_type {
        my( $building ) = @_;
        return unless $building;
        for my $k ( keys %meta_types ){
            if( any {$_ eq $building} @{$meta_types{$k}} ){
                return $k;
            }
        }
        return;
    }
    sub meta_type_list{
        return keys %meta_types if wantarray;
        return [keys %meta_types];
    }
    sub meta_building_list {
        my( $type ) = @_;
        return unless $type;
        my $buildings = $meta_types{$type};
        return @$buildings if wantarray;
        return [@$buildings];
    }
}
{
    my @tags = qw(alliance colony command decoration defense energy essentia food glyph happiness infrastructure intelligence ore planet sculpture ship spacestation storage trade waste water);
    sub tag_list {
        return @tags;
    }
}
{
    my %tags = (
        Algae => [qw(food)],
        AlgaePond => [qw(food glyph)],
        AmalgusMeadow => [qw(food glyph)],
        Apple => [qw(food)],
        Archaeology => [qw(command glyph infrastructure)],
        AtmosphericEvaporator => [qw(water)],
        Bean => [qw(food)],
        Beeldeban => [qw(food)],
        BeeldebanNest => [qw(food glyph)],
        Bread => [qw(food)],
        Burger => [qw(food)],
        Capitol => [qw(command infrastructure)],
        Cheese => [qw(food)],
        Chip => [qw(food)],
        Cider => [qw(food)],
        CitadelOfKnope => [qw(glyph ship)],
        CloakingLab => [qw(command infrastructure ship)],
        Corn => [qw(food)],
        CornMeal => [qw(food)],
        CrashedShipSite => [qw(glyph ship)],
        Crater => [qw(decoration glyph)],
        Dairy => [qw(food)],
        Denton => [qw(food)],
        DentonBrambles => [qw(food glyph)],
        DeployedBleeder => [qw(waste)],
        Development => [qw(command infrastructure)],
        DistributionCenter => [qw(storage)],
        Embassy => [qw(alliance command infrastructure)],
        EnergyReserve => [qw(energy storage)],
        Entertainment => [qw(happiness infrastructure)],
        Espionage => [qw(command infrastructure intelligence)],
        EssentiaVein => [qw(essentia glyph)],
        Fission => [qw(energy)],
        FoodReserve => [qw(food storage)],
        Fusion => [qw(energy)],
        GasGiantLab => [qw(command infrastructure ship)],
        GasGiantPlatform => [qw(command infrastructure ship)],
        GeneticsLab => [qw(command infrastructure)],
        Geo => [qw(energy)],
        GeoThermalVent => [qw(energy glyph)],
        GratchsGauntlet => [qw(glyph)],
        GreatBallOfJunk => [qw(happiness infrastructure sculpture waste)],
        Grove => [qw(glyph)],
        HallsOfVrbansk => [qw(glyph)],
        HydroCarbon => [qw(energy)],
        IBS => [qw(command)],
        Intelligence => [qw(command infrastructure intelligence)],
        InterDimensionalRift => [qw(glyph storage)],
        JunkHengeSculpture => [qw(happiness infrastructure sculpture waste)],
        KalavianRuins => [qw(glyph happiness)],
        KasternsKeep => [qw(glyph)],
        Lagoon => [qw(glyph)],
        Lake => [qw(decoration glyph)],
        Lapis => [qw(food)],
        LapisForest => [qw(food glyph)],
        LibraryOfJith => [qw(glyph infrastructure)],
        LuxuryHousing => [qw(happiness infrastructure)],
        Malcud => [qw(food)],
        MalcudField => [qw(food glyph)],
        MassadsHenge => [qw(glyph)],
        MercenariesGuild => [qw(command infrastructure ship trade)],
        MetalJunkArches => [qw(happiness infrastructure sculpture waste)],
        Mine => [qw(ore)],
        MiningMinistry => [qw(ore ship)],
        MissionCommand => [qw(command infrastructure)],
        MunitionsLab => [qw(command infrastructure ship)],
        NaturalSpring => [qw(glyph water)],
        Network19 => [qw(command happiness infrastructure)],
        Observatory => [qw(command infrastructure)],
        OracleOfAnid => [qw(glyph infrastructure)],
        OreRefinery => [qw(ore)],
        OreStorage => [qw(ore storage)],
        Oversight => [qw(command infrastructure)],
        Pancake => [qw(food)],
        PantheonOfHagness => [qw(glyph planet)],
        Park => [qw(command happiness infrastructure)],
        Parliament => [qw(command)],
        Pie => [qw(food)],
        PilotTraining => [qw(command infrastructure ship)],
        PlanetaryCommand => [qw(command infrastructure)],
        PoliceStation => [qw(command infrastructure)],
        Potato => [qw(food)],
        Propulsion => [qw(command infrastructure ship)],
        PyramidJunkSculpture => [qw(happiness infrastructure sculpture waste)],
        Ravine => [qw(glyph storage waste)],
        RockyOutcrop => [qw(decoration glyph)],
        SAW => [qw(command defense infrastructure)],
        SSLA => [qw(command infrastructure)],
        SSLB => [qw(command infrastructure)],
        SSLC => [qw(command infrastructure)],
        SSLD => [qw(command infrastructure)],
        Sand => [qw(decoration glyph)],
        Security => [qw(command infrastructure)],
        Shake => [qw(food)],
        Shipyard => [qw(command infrastructure ship)],
        Singularity => [qw(energy)],
        Soup => [qw(food)],
        SpaceJunkPark => [qw(happiness infrastructure sculpture waste)],
        SpacePort => [qw(command ship)],
        StationCommand => [qw(command infrastructure spacestation)],
        Stockpile => [qw(command storage)],
        SubspaceSupplyDepot => [qw(command)],
        SupplyPod => [qw(storage)],
        Syrup => [qw(food)],
        TempleOfTheDrajilites => [qw(command glyph)],
        TerraformingLab => [qw(colony command infrastructure)],
        TerraformingPlatform => [qw(colony command infrastructure)],
        TheDillonForge => [qw(glyph)],
        ThemePark => [qw(command happiness infrastructure)],
        Trade => [qw(command infrastructure ship trade)],
        Transporter => [qw(command infrastructure trade)],
        University => [qw(command infrastructure)],
        Volcano => [qw(glyph ore)],
        Warehouse => [qw(command storage)],
        WasteDigester => [qw(ore waste)],
        WasteEnergy => [qw(energy waste)],
        WasteRecycling => [qw(waste)],
        WasteSequestration => [qw(storage waste)],
        WasteTreatment => [qw(waste)],
        WaterProduction => [qw(water)],
        WaterPurification => [qw(water)],
        WaterReclamation => [qw(water)],
        WaterStorage => [qw(storage water)],
        Wheat => [qw(food)],
    );
    sub get_tags{
        my( $building ) = @_;
        return @{ $tags{$building} };
    }
}
{
    my %ships = (
        barge => {
            type_human => 'Barge',
            tags       => [
                'Mining',
                'Trade',
            ],
        },
        bleeder => {
            type_human => 'Bleeder',
            tags       => [
                'War',
            ],
        },
        cargo_ship => {
            type_human => 'Cargo Ship',
            tags       => [
                'Intelligence',
                'Mining',
                'Trade',
            ],
        },
        colony_ship => {
            type_human => 'Colony Ship',
            tags       => [
                'Colonization',
            ],
        },
        detonator => {
            type_human => 'Detonator',
            tags       => [
                'War',
            ],
        },
        dory => {
            type_human => 'Dory',
            tags       => [
                'Intelligence',
                'Mining',
                'Trade',
            ],
        },
        drone => {
            type_human => 'Drone',
            tags       => [
                'War',
            ],
        },
        excavator => {
            type_human => 'Excavator',
            tags       => [
                'Exploration',
            ],
        },
        fighter => {
            type_human => 'Fighter',
            tags       => [
                'War',
            ],
        },
        freighter => {
            type_human => 'Freighter',
            tags       => [
                'Mining',
                'Trade',
            ],
        },
        galleon => {
            type_human => 'Galleon',
            tags       => [
                'Mining',
                'Trade',
            ],
        },
        gas_giant_settlement_ship => {
            type_human => 'Gas Giant Settlement Ship',
            tags       => [
                'Colonization',
            ],
        },
        hulk => {
            type_human => 'Hulk',
            tags       => [
                'Mining',
                'Trade',
            ],
        },
        mining_platform_ship => {
            type_human => 'Mining Platform Ship',
            tags       => [
                'Mining',
            ],
        },
        observatory_seeker => {
            type_human => 'Observatory Seeker',
            tags       => [
                'War',
            ],
        },
        placebo => {
            type_human => 'Placebo',
            tags       => [
                'War',
            ],
        },
        placebo2 => {
            type_human => 'Placebo II',
            tags       => [
                'War',
            ],
        },
        placebo3 => {
            type_human => 'Placebo III',
            tags       => [
                'War',
            ],
        },
        placebo4 => {
            type_human => 'Placebo IV',
            tags       => [
                'War',
            ],
        },
        placebo5 => {
            type_human => 'Placebo V',
            tags       => [
                'War',
            ],
        },
        placebo6 => {
            type_human => 'Placebo VI',
            tags       => [
                'War',
            ],
        },
        probe => {
            type_human => 'Probe',
            tags       => [
                'Exploration',
                'Intelligence',
            ],
        },
        scanner => {
            type_human => 'Scanner',
            tags       => [
                'Exploration',
                'Intelligence',
            ],
        },
        scow => {
            type_human => 'Scow',
            tags       => [
                'War',
            ],
        },
        security_ministry_seeker => {
            type_human => 'Security Ministry Seeker',
            tags       => [
                'War',
            ],
        },
        short_range_colony_ship => {
            type_human => 'Short Range Colony Ship',
            tags       => [
                'Colonization',
            ],
        },
        smuggler_ship => {
            type_human => 'Smuggler Ship',
            tags       => [
                'Intelligence',
                'Mining',
                'Trade',
            ],
        },
        snark => {
            type_human => 'Snark',
            tags       => [
                'War',
            ],
        },
        snark2 => {
            type_human => 'Snark II',
            tags       => [
                'War',
            ],
        },
        snark3 => {
            type_human => 'Snark III',
            tags       => [
                'War',
            ],
        },
        space_station_hull => {
            type_human => 'Space Station Hull',
            tags       => [
                'Intelligence',
                'War',
            ],
        },
        spaceport_seeker => {
            type_human => 'Spaceport Seeker',
            tags       => [
                'War',
            ],
        },
        spy_pod => {
            type_human => 'Spy Pod',
            tags       => [
                'Intelligence',
            ],
        },
        spy_shuttle => {
            type_human => 'Spy Shuttle',
            tags       => [
                'Intelligence',
            ],
        },
        stake => {
            type_human => 'Stake',
            tags       => [
                'Colonization',
            ],
        },
        supply_pod => {
            type_human => 'Supply Pod',
            tags       => [
                'Colonization',
            ],
        },
        supply_pod2 => {
            type_human => 'Supply Pod II',
            tags       => [
                'Colonization',
            ],
        },
        supply_pod3 => {
            type_human => 'Supply Pod III',
            tags       => [
                'Colonization',
            ],
        },
        supply_pod4 => {
            type_human => 'Supply Pod IV',
            tags       => [
                'Colonization',
            ],
        },
        surveyor => {
            type_human => 'Surveyor',
            tags       => [
                'Exploration',
                'Intelligence',
            ],
        },
        sweeper => {
            type_human => 'Sweeper',
            tags       => [
                'War',
            ],
        },
        terraforming_platform_ship => {
            type_human => 'Terraforming Platform Ship',
            tags       => [
                'Colonization',
            ],
        },
        thud => {
            type_human => 'Thud',
            tags       => [
                'War',
            ],
        },
    );

    sub ship_types {
        return keys %ships;
    }
    sub ship_tags_list {
        my @tags = qw( Colonization Exploration Intelligence Mining Trade War );
        return wantarray ? @tags : [@tags];
    }
    sub ship_tags {
        my( $type ) = @_;
        return unless $type;
        my $tags = $ships{$type}{tags};
        return wantarray ? @$tags : [@$tags];
    }
    sub ship_type_human {
        my( $type ) = @_;
        return unless $type;
        return $ships{$type}{type_human};
    }
}
1;

__END__

=head1 NAME

Games::Lacuna::Client::Types

=head1 SYNOPSIS

    use Games::Lacuna::Client::Types;

=head1 FUNCTIONS

=over 4

=item food_types

=item ore_types

=item ship_types

=item ship_attribute_types

=item ship_attribute_types

=item get_tags

=item tag_list

=item meta_building_list

=item meta_type

=item meta_type_list

=item ship_types

=item ship_attribute_types

=item ship_tags_list

=item ship_tags

=item ship_type_human

=back

=cut

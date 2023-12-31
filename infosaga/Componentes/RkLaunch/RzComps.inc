{===============================================================================
  RzComps Include File

  This file is included into each unit and serves as a common place to add
  conditional defines and compiler directives to be used by all units.

  Symbol                Meaning
  ------------------------------------------------------------------------------
  VER15x                Compiler version is between 150 and 159 (Delphi 7)
  VER16x                Compiler version is between 160 and 169 (Delphi 8)
  VER17x                Compiler version is between 170 and 179 (Delphi 2005)
  VER18x                Compiler version is between 180 and 189 (BDS 2006/2007)
  VER20x                Compiler version is between 200 and 209 (RS 2009)
  VER21x                Compiler version is between 210 and 219 (RS 2010)
  VER22x                Compiler version is between 220 and 229 (XE)
  VER23x                Compiler version is between 230 and 239 (XE2)
  VER24x                Compiler version is between 240 and 249 (XE3)
  VER25x                Compiler version is between 250 and 259 (XE4)
  VER27x                Compiler version is between 270 and 269 (XE6)

  DELPHI                Is a Delphi verison of the compiler.
  BCB                   Is a C++Builder version of the compiler.

  VCL70                 VCL version 7.0 (Delphi 7.0)
  VCL80                 VCL version 8.0 (Delphi 8.0)
  VCL90                 VCL version 9.0 (Delphi 9.0 - a.k.a. Delphi 2005)
  VCL100                VCL version 10.0 (Delphi 10.0 - a.k.a. Delphi 2006)
  VCL105                VCL version 10.5 (Delphi 10.5 - a.k.a. Delphi 2007)
  VCL120                VCL version 12.0 (Delphi 12.0 - a.k.a. Delphi 2009)
  VCL140                VCL version 14.0 (Delphi 14.0 - a.k.a. Delphi 2010)
  VCL150                VCL version 15.0 (Delphi 15.0 - a.k.a. Delphi XE)
  VCL160                VCL version 16.0 (Delphi 16.0 - a.k.a. Delphi XE2)
  VCL170                VCL version 17.0 (Delphi 17.0 - a.k.a. Delphi XE3)
  VCL180                VCL version 18.0 (Delphi 18.0 - a.k.a. Delphi XE4)
  VCL200                VCL version 20.0 (Delphi 20.0 - a.k.a. Delphi XE6)

  VCL70_OR_HIGHER       VCL version 7.0 or higher
  VCL80_OR_HIGHER       VCL version 8.0 or higher
  VCL90_OR_HIGHER       VCL version 9.0 or higher
  VCL100_OR_HIGHER      VCL version 10.0 or higher
  VCL105_OR_HIGHER      VCL version 10.5 or higher
  VCL120_OR_HIGHER      VCL version 12.0 or higher
  VCL140_OR_HIGHER      VCL version 14.0 or higher
  VCL150_OR_HIGHER      VCL version 15.0 or higher
  VCL160_OR_HIGHER      VCL version 16.0 or higher
  VCL170_OR_HIGHER      VCL version 17.0 or higher
  VCL180_OR_HIGHER      VCL version 18.0 or higher
  VCL200_OR_HIGHER      VCL version 20.0 or higher

  DELPHI2005            BDS 3
  BDS2006               BDS 4
  RS2007                RAD Studio 5
  RS2009                RAD Studio 6
  RS2010                RAD Studio 7
  RSXE                  RAD Studio 8
  RSXE2                 RAD Studio 9
  RSXE3                 RAD Studio 10
  RSXE4                 RAD Studio 11
  RSXE6                 RAD Studio 13
  
  DELPHI2005_OR_HIGHER  BDS 3 or higher
  BDS2006_OR_HIGHER     BDS 4 or higher
  RS2007_OR_HIGHER      RAD Studio 5 or higher
  RS2009_OR_HIGHER      RAD Studio 6 or higher
  RS2010_OR_HIGHER      RAD Studio 7 or higher
  RSXE_OR_HIGHER        RAD Studio 8 or higher
  RSXE2_OR_HIGHER       RAD Studio 9 or higher
  RSXE3_OR_HIGHER       RAD Studio 10 or higher
  RSXE4_OR_HIGHER       RAD Studio 11 or higher
  RSXE6_OR_HIGHER       RAD Studio 14 or higher
  
  DELPHI7               Delphi 7     
  DELPHI8               Delphi 8
  DELPHI9               Delphi 9
  DELPHI10              Delphi 10
  DELPHI12              Delphi 12
  DELPHI14              Delphi 14
  DELPHI15              Delphi 15
  DELPHI16              Delphi 16
  DELPHI17              Delphi 17
  delphi18              delphi 18
  delphi20              delphi 20
  D7_OR_HIGHER          Delphi 7 or higher
  D8_OR_HIGHER          Delphi 8 or higher
  D9_OR_HIGHER          Delphi 9 or higher
  D10_OR_HIGHER         Delphi 10 or higher
  D12_OR_HIGHER         Delphi 12 or higher
  D14_OR_HIGHER         Delphi 14 or higher
  D15_OR_HIGHER         Delphi 15 or higher
  D16_OR_HIGHER         Delphi 16 or higher
  D17_OR_HIGHER         Delphi 17 or higher
  D18_OR_HIGHER         Delphi 18 or higher
  D20_OR_HIGHER         Delphi 20 or higher

  BCB10_OR_HIGHER       C++Builder 10 or higher
  BCB12_OR_HIGHER       C++Builder 12 or higher
  BCB14_OR_HIGHER       C++Builder 14 or higher
  BCB15_OR_HIGHER       C++Builder 15 or higher
  BCB16_OR_HIGHER       C++Builder 16 or higher
  BCB17_OR_HIGHER       C++Builder 17 or higher
  BCB18_OR_HIGHER       C++Builder 18 or higher

  DOT_NET               Compiling for Microsoft .NET Framework



  Copyright � 1995-2013 by Raize Software, Inc.  All Rights Reserved.
===============================================================================}

{$DEFINE VER_UNKNOWN}

// VER150 (Delphi 7)

{$IFDEF VER150}
  {$UNDEF VER_UNKNOWN}
  {$DEFINE VER15x}
  {$DEFINE VCL70}

  {$IFDEF MSWINDOWS}
    {$IFDEF BCB}
      {$OBJEXPORTALL ON}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI7}
      {$DEFINE D7_OR_HIGHER}
    {$ENDIF}
    {$DEFINE DOT_NET_WARNINGS_OFF}
  {$ELSE}
    // Non-Windows compiler (i.e. Kylix)
  {$ENDIF}

  {$DEFINE VCL70_OR_HIGHER}
{$ENDIF}


// VER160 (Delphi 8)

{$IFDEF VER160}
  {$UNDEF VER_UNKNOWN}
  {$DEFINE VER16x}
  {$DEFINE VCL80}

  {$IFDEF MSWINDOWS}
    {$IFDEF BCB}
      {$OBJEXPORTALL ON}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI8}
      {$DEFINE D7_OR_HIGHER}
      {$DEFINE D8_OR_HIGHER}
    {$ENDIF}
    //{$DEFINE DOT_NET_WARNINGS_OFF}
  {$ELSE}
    // Non-Windows compiler (i.e. Kylix)
  {$ENDIF}

  {$DEFINE VCL70_OR_HIGHER}
  {$DEFINE VCL80_OR_HIGHER}
{$ENDIF}


// VER170 (Delphi 2005)

{$IFDEF VER170}
  {$UNDEF VER_UNKNOWN}
  {$DEFINE VER17x}
  {$DEFINE VCL90}
  {$DEFINE DELPHI2005}

  {$IFDEF MSWINDOWS}
    {$IFDEF BCB}
      {$OBJEXPORTALL ON}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI9}
      {$DEFINE D7_OR_HIGHER}
      {$DEFINE D8_OR_HIGHER}
      {$DEFINE D9_OR_HIGHER}
    {$ENDIF}
    //{$DEFINE DOT_NET_WARNINGS_OFF}
  {$ELSE}
    // Non-Windows compiler (i.e. Kylix)
  {$ENDIF}

  {$DEFINE VCL70_OR_HIGHER}
  {$DEFINE VCL80_OR_HIGHER}
  {$DEFINE VCL90_OR_HIGHER}
  {$DEFINE DELPHI2005_OR_HIGHER}
{$ENDIF}


// VER180 (Delphi 2006) and VER185 (Delphi 2007)

{$IFDEF VER180}
  {$UNDEF VER_UNKNOWN}
  {$DEFINE VER18x}
  {$DEFINE VCL100}
  {$DEFINE BDS2006}

  {$IFDEF MSWINDOWS}
    {$IFDEF BCB}
      {$DEFINE BCB10_OR_HIGHER}
      {$OBJEXPORTALL ON}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI10}
      {$DEFINE D7_OR_HIGHER}
      {$DEFINE D8_OR_HIGHER}
      {$DEFINE D9_OR_HIGHER}
      {$DEFINE D10_OR_HIGHER}
    {$ENDIF}
    //{$DEFINE DOT_NET_WARNINGS_OFF}
  {$ELSE}
    // Non-Windows compiler (i.e. Kylix)
  {$ENDIF}

  {$DEFINE VCL70_OR_HIGHER}
  {$DEFINE VCL80_OR_HIGHER}
  {$DEFINE VCL90_OR_HIGHER}
  {$DEFINE VCL100_OR_HIGHER}
  {$DEFINE DELPHI2005_OR_HIGHER}
  {$DEFINE BDS2006_OR_HIGHER}
  
  {$IFDEF VER185}
    {$DEFINE VCL105}
    {$DEFINE RS2007}
    {$DEFINE VCL105_OR_HIGHER}
    {$DEFINE RS2007_OR_HIGHER}
  {$ENDIF}
  
{$ENDIF}



// VER200 (RAD Studio 2009)

{$IFDEF VER200}
  {$UNDEF VER_UNKNOWN}
  {$DEFINE VER20x}
  {$DEFINE VCL120}
  {$DEFINE RS2009}

  {$IFDEF MSWINDOWS}
    {$IFDEF BCB}
      {$DEFINE BCB10_OR_HIGHER}
      {$DEFINE BCB12_OR_HIGHER}
      {$OBJEXPORTALL ON}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI12}
      {$DEFINE D7_OR_HIGHER}
      {$DEFINE D8_OR_HIGHER}
      {$DEFINE D9_OR_HIGHER}
      {$DEFINE D10_OR_HIGHER}
      {$DEFINE D12_OR_HIGHER}
    {$ENDIF}
    //{$DEFINE DOT_NET_WARNINGS_OFF}
  {$ELSE}
    // Non-Windows compiler (i.e. Kylix)
  {$ENDIF}

  {$DEFINE VCL70_OR_HIGHER}
  {$DEFINE VCL80_OR_HIGHER}
  {$DEFINE VCL90_OR_HIGHER}
  {$DEFINE VCL100_OR_HIGHER}
  {$DEFINE VCL105_OR_HIGHER}
  {$DEFINE VCL120_OR_HIGHER}
  
  {$DEFINE DELPHI2005_OR_HIGHER}
  {$DEFINE BDS2006_OR_HIGHER}
  {$DEFINE RS2007_OR_HIGHER}
  {$DEFINE RS2009_OR_HIGHER}
{$ENDIF}


// VER210 (RAD Studio 2010)

{$IFDEF VER210}
  {$UNDEF VER_UNKNOWN}
  {$DEFINE VER21x}
  {$DEFINE VCL140}
  {$DEFINE RS2010}

  {$IFDEF MSWINDOWS}
    {$IFDEF BCB}
      {$DEFINE BCB10_OR_HIGHER}
      {$DEFINE BCB12_OR_HIGHER}
      {$DEFINE BCB14_OR_HIGHER}
      {$OBJEXPORTALL ON}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI12}
      {$DEFINE D7_OR_HIGHER}
      {$DEFINE D8_OR_HIGHER}
      {$DEFINE D9_OR_HIGHER}
      {$DEFINE D10_OR_HIGHER}
      {$DEFINE D12_OR_HIGHER}
      {$DEFINE D14_OR_HIGHER}
    {$ENDIF}
    //{$DEFINE DOT_NET_WARNINGS_OFF}
  {$ELSE}
    // Non-Windows compiler (i.e. Kylix)
  {$ENDIF}

  {$DEFINE VCL70_OR_HIGHER}
  {$DEFINE VCL80_OR_HIGHER}
  {$DEFINE VCL90_OR_HIGHER}
  {$DEFINE VCL100_OR_HIGHER}
  {$DEFINE VCL105_OR_HIGHER}
  {$DEFINE VCL120_OR_HIGHER}
  {$DEFINE VCL140_OR_HIGHER}

  {$DEFINE DELPHI2005_OR_HIGHER}
  {$DEFINE BDS2006_OR_HIGHER}
  {$DEFINE RS2007_OR_HIGHER}
  {$DEFINE RS2009_OR_HIGHER}
  {$DEFINE RS2010_OR_HIGHER}
{$ENDIF}


// VER220 (RAD Studio XE)

{$IFDEF VER220}
  {$UNDEF VER_UNKNOWN}
  {$DEFINE VER22x}
  {$DEFINE VCL150}
  {$DEFINE RSXE}

  {$IFDEF MSWINDOWS}
    {$IFDEF BCB}
      {$DEFINE BCB10_OR_HIGHER}
      {$DEFINE BCB12_OR_HIGHER}
      {$DEFINE BCB14_OR_HIGHER}
      {$DEFINE BCB15_OR_HIGHER}
      {$OBJEXPORTALL ON}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI12}
      {$DEFINE D7_OR_HIGHER}
      {$DEFINE D8_OR_HIGHER}
      {$DEFINE D9_OR_HIGHER}
      {$DEFINE D10_OR_HIGHER}
      {$DEFINE D12_OR_HIGHER}
      {$DEFINE D14_OR_HIGHER}
      {$DEFINE D15_OR_HIGHER}
    {$ENDIF}
    //{$DEFINE DOT_NET_WARNINGS_OFF}
  {$ELSE}
    // Non-Windows compiler (i.e. Kylix)
  {$ENDIF}

  {$DEFINE VCL70_OR_HIGHER}
  {$DEFINE VCL80_OR_HIGHER}
  {$DEFINE VCL90_OR_HIGHER}
  {$DEFINE VCL100_OR_HIGHER}
  {$DEFINE VCL105_OR_HIGHER}
  {$DEFINE VCL120_OR_HIGHER}
  {$DEFINE VCL140_OR_HIGHER}
  {$DEFINE VCL150_OR_HIGHER}

  {$DEFINE DELPHI2005_OR_HIGHER}
  {$DEFINE BDS2006_OR_HIGHER}
  {$DEFINE RS2007_OR_HIGHER}
  {$DEFINE RS2009_OR_HIGHER}
  {$DEFINE RS2010_OR_HIGHER}
  {$DEFINE RSXE_OR_HIGHER}
{$ENDIF}


// VER230 (RAD Studio XE2)

{$IFDEF VER230}
  {$UNDEF VER_UNKNOWN}
  {$DEFINE VER23x}
  {$DEFINE VCL160}
  {$DEFINE RSXE2}

  {$IFDEF MSWINDOWS}
    {$IFDEF BCB}
      {$DEFINE BCB10_OR_HIGHER}
      {$DEFINE BCB12_OR_HIGHER}
      {$DEFINE BCB14_OR_HIGHER}
      {$DEFINE BCB15_OR_HIGHER}
      {$DEFINE BCB16_OR_HIGHER}
      {$OBJEXPORTALL ON}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI12}
      {$DEFINE D7_OR_HIGHER}
      {$DEFINE D8_OR_HIGHER}
      {$DEFINE D9_OR_HIGHER}
      {$DEFINE D10_OR_HIGHER}
      {$DEFINE D12_OR_HIGHER}
      {$DEFINE D14_OR_HIGHER}
      {$DEFINE D15_OR_HIGHER}
      {$DEFINE D16_OR_HIGHER}
    {$ENDIF}
    //{$DEFINE DOT_NET_WARNINGS_OFF}
  {$ELSE}
    // Non-Windows compiler (i.e. Kylix)
  {$ENDIF}

  {$DEFINE VCL70_OR_HIGHER}
  {$DEFINE VCL80_OR_HIGHER}
  {$DEFINE VCL90_OR_HIGHER}
  {$DEFINE VCL100_OR_HIGHER}
  {$DEFINE VCL105_OR_HIGHER}
  {$DEFINE VCL120_OR_HIGHER}
  {$DEFINE VCL140_OR_HIGHER}
  {$DEFINE VCL150_OR_HIGHER}
  {$DEFINE VCL160_OR_HIGHER}

  {$DEFINE DELPHI2005_OR_HIGHER}
  {$DEFINE BDS2006_OR_HIGHER}
  {$DEFINE RS2007_OR_HIGHER}
  {$DEFINE RS2009_OR_HIGHER}
  {$DEFINE RS2010_OR_HIGHER}
  {$DEFINE RSXE_OR_HIGHER}
  {$DEFINE RSXE2_OR_HIGHER}
{$ENDIF}


// VER240 (RAD Studio XE3)

{$IFDEF VER240}
  {$UNDEF VER_UNKNOWN}
  {$DEFINE VER24x}
  {$DEFINE VCL170}
  {$DEFINE RSXE3}

  {$IFDEF MSWINDOWS}
    {$IFDEF BCB}
      {$DEFINE BCB10_OR_HIGHER}
      {$DEFINE BCB12_OR_HIGHER}
      {$DEFINE BCB14_OR_HIGHER}
      {$DEFINE BCB15_OR_HIGHER}
      {$DEFINE BCB16_OR_HIGHER}
      {$DEFINE BCB17_OR_HIGHER}
      {$OBJEXPORTALL ON}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI12}
      {$DEFINE D7_OR_HIGHER}
      {$DEFINE D8_OR_HIGHER}
      {$DEFINE D9_OR_HIGHER}
      {$DEFINE D10_OR_HIGHER}
      {$DEFINE D12_OR_HIGHER}
      {$DEFINE D14_OR_HIGHER}
      {$DEFINE D15_OR_HIGHER}
      {$DEFINE D16_OR_HIGHER}
      {$DEFINE D17_OR_HIGHER}
    {$ENDIF}
    //{$DEFINE DOT_NET_WARNINGS_OFF}
  {$ELSE}
    // Non-Windows compiler (i.e. Kylix)
  {$ENDIF}

  {$DEFINE VCL70_OR_HIGHER}
  {$DEFINE VCL80_OR_HIGHER}
  {$DEFINE VCL90_OR_HIGHER}
  {$DEFINE VCL100_OR_HIGHER}
  {$DEFINE VCL105_OR_HIGHER}
  {$DEFINE VCL120_OR_HIGHER}
  {$DEFINE VCL140_OR_HIGHER}
  {$DEFINE VCL150_OR_HIGHER}
  {$DEFINE VCL160_OR_HIGHER}
  {$DEFINE VCL170_OR_HIGHER}

  {$DEFINE DELPHI2005_OR_HIGHER}
  {$DEFINE BDS2006_OR_HIGHER}
  {$DEFINE RS2007_OR_HIGHER}
  {$DEFINE RS2009_OR_HIGHER}
  {$DEFINE RS2010_OR_HIGHER}
  {$DEFINE RSXE_OR_HIGHER}
  {$DEFINE RSXE2_OR_HIGHER}
  {$DEFINE RSXE3_OR_HIGHER}
{$ENDIF}


// VER250 (RAD Studio XE4)

// If compiler version is unknown, assume to be VER250

{$IFDEF VER250}
  {$DEFINE USE_VER250}
{$ENDIF}

{$IFDEF VER_UNKNOWN}
  {$UNDEF VER_UNKNOWN}
  {$DEFINE USE_VER250}
{$ENDIF}

{$IFDEF USE_VER250}
  {$UNDEF VER_UNKNOWN}
  {$DEFINE VER25x}
  {$DEFINE VCL180}
  {$DEFINE RSXE4}

  {$IFDEF MSWINDOWS}
    {$IFDEF BCB}
      {$DEFINE BCB10_OR_HIGHER}
      {$DEFINE BCB12_OR_HIGHER}
      {$DEFINE BCB14_OR_HIGHER}
      {$DEFINE BCB15_OR_HIGHER}
      {$DEFINE BCB16_OR_HIGHER}
      {$DEFINE BCB17_OR_HIGHER}
      {$DEFINE BCB18_OR_HIGHER}
      {$OBJEXPORTALL ON}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI12}
      {$DEFINE D7_OR_HIGHER}
      {$DEFINE D8_OR_HIGHER}
      {$DEFINE D9_OR_HIGHER}
      {$DEFINE D10_OR_HIGHER}
      {$DEFINE D12_OR_HIGHER}
      {$DEFINE D14_OR_HIGHER}
      {$DEFINE D15_OR_HIGHER}
      {$DEFINE D16_OR_HIGHER}
      {$DEFINE D17_OR_HIGHER}
      {$DEFINE D18_OR_HIGHER}
    {$ENDIF}
    //{$DEFINE DOT_NET_WARNINGS_OFF}
  {$ELSE}
    // Non-Windows compiler (i.e. Kylix)
  {$ENDIF}

  {$DEFINE VCL70_OR_HIGHER}
  {$DEFINE VCL80_OR_HIGHER}
  {$DEFINE VCL90_OR_HIGHER}
  {$DEFINE VCL100_OR_HIGHER}
  {$DEFINE VCL105_OR_HIGHER}
  {$DEFINE VCL120_OR_HIGHER}
  {$DEFINE VCL140_OR_HIGHER}
  {$DEFINE VCL150_OR_HIGHER}
  {$DEFINE VCL160_OR_HIGHER}
  {$DEFINE VCL170_OR_HIGHER}
  {$DEFINE VCL180_OR_HIGHER}

  {$DEFINE DELPHI2005_OR_HIGHER}
  {$DEFINE BDS2006_OR_HIGHER}
  {$DEFINE RS2007_OR_HIGHER}
  {$DEFINE RS2009_OR_HIGHER}
  {$DEFINE RS2010_OR_HIGHER}
  {$DEFINE RSXE_OR_HIGHER}
  {$DEFINE RSXE2_OR_HIGHER}
  {$DEFINE RSXE3_OR_HIGHER}
  {$DEFINE RSXE4_OR_HIGHER}
{$ENDIF}

// VER250 (RAD Studio XE6)

// If compiler version is unknown, assume to be VER270

{$IFDEF VER270}
  {$DEFINE USE_VER270}
{$ENDIF}

{$IFDEF VER_UNKNOWN}
  {$UNDEF VER_UNKNOWN}
  {$DEFINE USE_VER270}
{$ENDIF}

{$IFDEF USE_VER270}
  {$UNDEF VER_UNKNOWN}
  {$DEFINE VER27x}
  {$DEFINE VCL200}
  {$DEFINE RSXE6}

  {$IFDEF MSWINDOWS}
    {$IFDEF BCB}
      {$DEFINE BCB10_OR_HIGHER}
      {$DEFINE BCB12_OR_HIGHER}
      {$DEFINE BCB14_OR_HIGHER}
      {$DEFINE BCB15_OR_HIGHER}
      {$DEFINE BCB16_OR_HIGHER}
      {$DEFINE BCB17_OR_HIGHER}
      {$DEFINE BCB18_OR_HIGHER}
      {$OBJEXPORTALL ON}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI12}
      {$DEFINE D7_OR_HIGHER}
      {$DEFINE D8_OR_HIGHER}
      {$DEFINE D9_OR_HIGHER}
      {$DEFINE D10_OR_HIGHER}
      {$DEFINE D12_OR_HIGHER}
      {$DEFINE D14_OR_HIGHER}
      {$DEFINE D15_OR_HIGHER}
      {$DEFINE D16_OR_HIGHER}
      {$DEFINE D17_OR_HIGHER}
      {$DEFINE D18_OR_HIGHER}
	  {$DEFINE D20_OR_HIGHER}
    {$ENDIF}
    //{$DEFINE DOT_NET_WARNINGS_OFF}
  {$ELSE}
    // Non-Windows compiler (i.e. Kylix)
  {$ENDIF}

  {$DEFINE VCL70_OR_HIGHER}
  {$DEFINE VCL80_OR_HIGHER}
  {$DEFINE VCL90_OR_HIGHER}
  {$DEFINE VCL100_OR_HIGHER}
  {$DEFINE VCL105_OR_HIGHER}
  {$DEFINE VCL120_OR_HIGHER}
  {$DEFINE VCL140_OR_HIGHER}
  {$DEFINE VCL150_OR_HIGHER}
  {$DEFINE VCL160_OR_HIGHER}
  {$DEFINE VCL170_OR_HIGHER}
  {$DEFINE VCL180_OR_HIGHER}
  {$DEFINE VCL200_OR_HIGHER}

  {$DEFINE DELPHI2005_OR_HIGHER}
  {$DEFINE BDS2006_OR_HIGHER}
  {$DEFINE RS2007_OR_HIGHER}
  {$DEFINE RS2009_OR_HIGHER}
  {$DEFINE RS2010_OR_HIGHER}
  {$DEFINE RSXE_OR_HIGHER}
  {$DEFINE RSXE2_OR_HIGHER}
  {$DEFINE RSXE3_OR_HIGHER}
  {$DEFINE RSXE4_OR_HIGHER}
  {$DEFINE RSXE6_OR_HIGHER}
{$ENDIF}


{== Warnings ==================================================================}

{$WARN UNIT_PLATFORM OFF}
{$WARN SYMBOL_PLATFORM OFF}
{WARN UNIT_DEPRECATED OFF}
{WARN SYMBOL_DEPRECATED OFF}


{$IFDEF DOT_NET_WARNINGS_OFF}
  {$WARN UNSAFE_CODE OFF}
  {$WARN UNSAFE_TYPE OFF}
  {$WARN UNSAFE_CAST OFF}
{$ENDIF}


{$IFDEF CIL}
  {$DEFINE DOT_NET}
  {$DEFINE CLR_11}
  {$IFDEF VER185}
    {$DEFINE CLR_20}
  {$ENDIF}
{$ENDIF}


{== Code Generation Directives ================================================}

{$ALIGN ON}
{$OPTIMIZATION ON}
{$SAFEDIVIDE OFF}
{$STACKFRAMES OFF}

// Runtime Errors

{$IFOPT D+}
  // Compiled with Debug Information
  {$ASSERTIONS ON}
  {$LOCALSYMBOLS ON}
  {$RANGECHECKS ON}
  {$REFERENCEINFO ON}
{$ELSE}
  // Compiled without Debug Information
  {$ASSERTIONS OFF}
  {$LOCALSYMBOLS OFF}
  {$RANGECHECKS OFF}
  {$REFERENCEINFO OFF}
{$ENDIF}

{$IOCHECKS ON}
{$OVERFLOWCHECKS OFF}

// Syntax Options

{$BOOLEVAL OFF}
{$LONGSTRINGS ON}
{$WRITEABLECONST OFF}
{$OPENSTRINGS ON}
{$TYPEDADDRESS OFF}
{$VARSTRINGCHECKS OFF}
{$EXTENDEDSYNTAX ON}

// Miscellaneous Directives

{$IMPORTEDDATA ON}
{$MINENUMSIZE 1}


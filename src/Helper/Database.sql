USE [master]
GO
/****** Object:  Database [Viviendas]    Script Date: 13/08/2022 9:12:41 p. m. ******/
CREATE DATABASE [Viviendas]
GO

USE [Viviendas]
GO

CREATE TABLE [dbo].[Departamento](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 13/08/2022 9:12:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoCivil](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EstadoCivil] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 13/08/2022 9:12:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[DepartamentoID] [int] NOT NULL,
 CONSTRAINT [PK_municipios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 13/08/2022 9:12:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[Cedula] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[EstadoCivilID] [int] NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonaVivienda]    Script Date: 13/08/2022 9:12:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonaVivienda](
	[ID] [int] NOT NULL,
	[EscrituraID] [int] NOT NULL,
	[CedulaID] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Posee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoVivienda]    Script Date: 13/08/2022 9:12:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoVivienda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoVivienda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vivienda]    Script Date: 13/08/2022 9:12:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vivienda](
	[Escritura] [int] NOT NULL,
	[TipoViviendaID] [int] NOT NULL,
	[Dirección] [varchar](50) NOT NULL,
	[MunicipioID] [int] NOT NULL,
 CONSTRAINT [PK_vivienda] PRIMARY KEY CLUSTERED 
(
	[Escritura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (1, N'ANTIOQUIA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (2, N'ATLANTICO')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (3, N'BOGOTA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (4, N'BOLIVAR')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (5, N'BOYACA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (6, N'CALDAS')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (7, N'CAQUETA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (8, N'CAUCA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (9, N'CESAR')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (10, N'CORDOBA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (11, N'CUNDINAMARCA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (12, N'CHOCO')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (13, N'HUILA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (14, N'LA GUAJIRA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (15, N'MAGDALENA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (16, N'META')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (17, N'NARIÑO')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (18, N'NORTE DE SANTANDER')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (19, N'QUINDIO')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (20, N'RISARALDA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (21, N'SANTANDER')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (22, N'SUCRE')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (23, N'TOLIMA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (24, N'VALLE DEL CAUCA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (25, N'ARAUCA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (26, N'CASANARE')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (27, N'PUTUMAYO')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (28, N'SAN ANDRES')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (29, N'AMAZONAS')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (30, N'GUAINIA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (31, N'GUAVIARE')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (32, N'VAUPES')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (33, N'VICHADA')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (34, N'NatyEGO')
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (35, N'NatyEGO')
GO
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
INSERT [dbo].[EstadoCivil] ([ID], [Nombre]) VALUES (1, N'Soltero')
GO
INSERT [dbo].[EstadoCivil] ([ID], [Nombre]) VALUES (2, N'Casado')
GO
INSERT [dbo].[EstadoCivil] ([ID], [Nombre]) VALUES (3, N'Divorciado')
GO
INSERT [dbo].[EstadoCivil] ([ID], [Nombre]) VALUES (4, N'Viudo')
GO
INSERT [dbo].[EstadoCivil] ([ID], [Nombre]) VALUES (5, N'Union Libre')
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1, N'Cáceres', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (2, N'Caucasia', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (3, N'El Bagre', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (4, N'Nechí', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (5, N'Tarazá', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (6, N'Zaragoza', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (7, N'Caracolí', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (8, N'Maceo', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (9, N'Puerto Berrío', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (10, N'Puerto Nare', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (11, N'Puerto Triunfo', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (12, N'Yondó', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (13, N'Amalfi', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (14, N'Anorí', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (15, N'Cisneros', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (16, N'Remedios', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (17, N'San Roque', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (18, N'Santo Domingo', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (19, N'Segovia', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (20, N'Vegachí', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (21, N'Yalí', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (22, N'Yolombó', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (23, N'Angostura', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (24, N'Belmira', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (25, N'Briceño', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (26, N'Campamento', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (27, N'Carolina del Príncipe', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (28, N'Donmatías', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (29, N'Entrerríos', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (30, N'Gómez Plata', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (31, N'Guadalupe', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (32, N'Ituango', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (33, N'San Andrés de Cuerquia', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (34, N'San José de la Montaña', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (35, N'San Pedro de los Milagros', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (36, N'Santa Rosa de Osos', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (37, N'Toledo', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (38, N'Valdivia', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (39, N'Yarumal', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (40, N'Abriaquí', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (41, N'Antioquia', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (42, N'Anzá', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (43, N'Armenia', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (44, N'Buriticá', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (45, N'Caicedo', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (46, N'Cañasgordas', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (47, N'Dabeiba', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (48, N'Ebéjico', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (49, N'Frontino', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (50, N'Giraldo', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (51, N'Heliconia', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (52, N'Liborina', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (53, N'Olaya', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (54, N'Peque', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (55, N'Sabanalarga', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (56, N'San Jerónimo', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (57, N'Sopetrán', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (58, N'Uramita', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (59, N'Abejorral', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (60, N'Alejandría', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (61, N'Argelia', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (62, N'Carmen de Viboral', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (63, N'Cocorná', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (64, N'Concepción', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (65, N'El Peñol', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (66, N'El Retiro', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (67, N'El Santuario', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (68, N'Granada', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (69, N'Guarne', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (70, N'Guatapé', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (71, N'La Ceja', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (72, N'La Unión', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (73, N'Marinilla', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (74, N'Nariño', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (75, N'Rionegro', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (76, N'San Carlos', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (77, N'San Francisco', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (78, N'San Luis', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (79, N'San Rafael', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (80, N'San Vicente', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (81, N'Sonsón', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (82, N'Amagá', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (83, N'Andes', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (84, N'Angelópolis', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (85, N'Betania', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (86, N'Betulia', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (87, N'Caramanta', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (88, N'Ciudad Bolívar', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (89, N'Concordia', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (90, N'Fredonia', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (91, N'Hispania', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (92, N'Jardín', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (93, N'Jericó', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (94, N'La Pintada', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (95, N'Montebello', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (96, N'Pueblorrico', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (97, N'Salgar', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (98, N'Santa Bárbara', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (99, N'Támesis', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (100, N'Tarso', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (101, N'Titiribí', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (102, N'Urrao', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (103, N'Valparaíso', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (104, N'Venecia', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (105, N'Apartadó', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (106, N'Arboletes', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (107, N'Carepa', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (108, N'Chigorodó', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (109, N'Murindó', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (110, N'Mutatá', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (111, N'Necoclí', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (112, N'San Juan de Urabá', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (113, N'San Pedro de Urabá', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (114, N'Turbo', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (115, N'Vigía del Fuerte', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (116, N'Barbosa', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (117, N'Bello', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (118, N'Caldas', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (119, N'Copacabana', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (120, N'Envigado', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (121, N'Girardota', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (122, N'Itagüí', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (123, N'La Estrella', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (124, N'Medellín', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (125, N'Sabaneta', 1)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (126, N'BARRANQUILLA', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (127, N'BARANOA', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (128, N'CAMPO DE LA CRUZ', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (129, N'CANDELARIA', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (130, N'GALAPA', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (131, N'JUAN DE ACOSTA', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (132, N'LURUACO', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (133, N'MALAMBO', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (134, N'MANATI', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (135, N'PALMAR DE VARELA', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (136, N'PIOJO', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (137, N'POLONUEVO', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (138, N'PONEDERA', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (139, N'PUERTO COLOMBIA', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (140, N'REPELON', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (141, N'SABANAGRANDE', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (142, N'SABANALARGA', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (143, N'SANTA LUCIA', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (144, N'SANTO TOMAS', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (145, N'SOLEDAD', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (146, N'SUAN', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (147, N'TUBARA', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (148, N'USIACURI', 2)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (149, N'BOGOTA D.C', 3)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (150, N'CARTAGENA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (151, N'ACHI', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (152, N'ALTOS DEL ROSARIO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (153, N'ARENAL', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (154, N'ARJONA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (155, N'ARROYOHONDO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (156, N'BARRANCO DE LOBA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (157, N'CALAMAR', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (158, N'CANTAGALLO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (159, N'CICUCO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (160, N'CORDOBA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (161, N'CLEMENCIA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (162, N'EL CARMEN DE BOLIVAR', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (163, N'EL GUAMO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (164, N'EL PEÃ‘ON', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (165, N'HATILLO DE LOBA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (166, N'MAGANGUE', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (167, N'MAHATES', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (168, N'MARGARITA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (169, N'MARIA LA BAJA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (170, N'MONTECRISTO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (171, N'MOMPOS', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (172, N'NOROSI', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (173, N'MORALES', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (174, N'PINILLOS', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (175, N'REGIDOR', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (176, N'RIO VIEJO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (177, N'SAN CRISTOBAL', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (178, N'SAN ESTANISLAO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (179, N'SAN FERNANDO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (180, N'SAN JACINTO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (181, N'SAN JACINTO DEL CAUCA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (182, N'SAN JUAN NEPOMUCENO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (183, N'SAN MARTIN DE LOBA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (184, N'SAN PABLO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (185, N'SANTA CATALINA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (186, N'SANTA ROSA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (187, N'SANTA ROSA DEL SUR', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (188, N'SIMITI', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (189, N'SOPLAVIENTO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (190, N'TALAIGUA NUEVO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (191, N'TIQUISIO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (192, N'TURBACO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (193, N'TURBANA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (194, N'VILLANUEVA', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (195, N'ZAMBRANO', 4)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (196, N'TUNJA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (197, N'ALMEIDA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (198, N'AQUITANIA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (199, N'ARCABUCO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (200, N'BELEN', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (201, N'BERBEO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (202, N'BETEITIVA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (203, N'BOAVITA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (204, N'BOYACA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (205, N'BRICEÃ‘O', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (206, N'BUENAVISTA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (207, N'BUSBANZA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (208, N'CALDAS', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (209, N'CAMPOHERMOSO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (210, N'CERINZA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (211, N'CHINAVITA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (212, N'CHIQUINQUIRA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (213, N'CHISCAS', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (214, N'CHITA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (215, N'CHITARAQUE', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (216, N'CHIVATA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (217, N'CIENEGA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (218, N'COMBITA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (219, N'COPER', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (220, N'CORRALES', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (221, N'COVARACHIA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (222, N'CUBARA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (223, N'CUCAITA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (224, N'CUITIVA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (225, N'CHIQUIZA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (226, N'CHIVOR', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (227, N'DUITAMA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (228, N'EL COCUY', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (229, N'EL ESPINO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (230, N'FIRAVITOBA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (231, N'FLORESTA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (232, N'GACHANTIVA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (233, N'GAMEZA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (234, N'GARAGOA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (235, N'GUACAMAYAS', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (236, N'GUATEQUE', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (237, N'GUAYATA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (238, N'GsICAN', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (239, N'IZA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (240, N'JENESANO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (241, N'JERICO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (242, N'LABRANZAGRANDE', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (243, N'LA CAPILLA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (244, N'LA VICTORIA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (245, N'LA UVITA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (246, N'VILLA DE LEYVA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (247, N'MACANAL', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (248, N'MARIPI', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (249, N'MIRAFLORES', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (250, N'MONGUA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (251, N'MONGUI', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (252, N'MONIQUIRA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (253, N'MOTAVITA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (254, N'MUZO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (255, N'NOBSA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (256, N'NUEVO COLON', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (257, N'OICATA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (258, N'OTANCHE', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (259, N'PACHAVITA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (260, N'PAEZ', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (261, N'PAIPA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (262, N'PAJARITO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (263, N'PANQUEBA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (264, N'PAUNA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (265, N'PAYA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (266, N'PAZ DE RIO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (267, N'PESCA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (268, N'PISBA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (269, N'PUERTO BOYACA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (270, N'QUIPAMA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (271, N'RAMIRIQUI', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (272, N'RAQUIRA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (273, N'RONDON', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (274, N'SABOYA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (275, N'SACHICA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (276, N'SAMACA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (277, N'SAN EDUARDO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (278, N'SAN JOSE DE PARE', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (279, N'SAN LUIS DE GACENO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (280, N'SAN MATEO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (281, N'SAN MIGUEL DE SEMA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (282, N'SAN PABLO DE BORBUR', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (283, N'SANTANA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (284, N'SANTA MARIA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (285, N'SANTA ROSA DE VITERBO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (286, N'SANTA SOFIA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (287, N'SATIVANORTE', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (288, N'SATIVASUR', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (289, N'SIACHOQUE', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (290, N'SOATA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (291, N'SOCOTA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (292, N'SOCHA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (293, N'SOGAMOSO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (294, N'SOMONDOCO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (295, N'SORA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (296, N'SOTAQUIRA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (297, N'SORACA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (298, N'SUSACON', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (299, N'SUTAMARCHAN', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (300, N'SUTATENZA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (301, N'TASCO', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (302, N'TENZA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (303, N'TIBANA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (304, N'TIBASOSA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (305, N'TINJACA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (306, N'TIPACOQUE', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (307, N'TOCA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (308, N'TOGsI', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (309, N'TOPAGA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (310, N'TOTA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (311, N'TUNUNGUA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (312, N'TURMEQUE', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (313, N'TUTA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (314, N'TUTAZA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (315, N'UMBITA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (316, N'VENTAQUEMADA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (317, N'VIRACACHA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (318, N'ZETAQUIRA', 5)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (319, N'MANIZALES', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (320, N'AGUADAS', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (321, N'ANSERMA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (322, N'ARANZAZU', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (323, N'BELALCAZAR', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (324, N'CHINCHINA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (325, N'FILADELFIA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (326, N'LA DORADA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (327, N'LA MERCED', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (328, N'MANZANARES', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (329, N'MARMATO', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (330, N'MARQUETALIA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (331, N'MARULANDA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (332, N'NEIRA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (333, N'NORCASIA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (334, N'PACORA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (335, N'PALESTINA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (336, N'PENSILVANIA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (337, N'RIOSUCIO', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (338, N'RISARALDA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (339, N'SALAMINA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (340, N'SAMANA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (341, N'SAN JOSE', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (342, N'SUPIA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (343, N'VICTORIA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (344, N'VILLAMARIA', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (345, N'VITERBO', 6)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (346, N'FLORENCIA', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (347, N'ALBANIA', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (348, N'BELEN DE LOS ANDAQUIES', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (349, N'CARTAGENA DEL CHAIRA', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (350, N'CURILLO', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (351, N'EL DONCELLO', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (352, N'EL PAUJIL', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (353, N'LA MONTAÃ‘ITA', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (354, N'MILAN', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (355, N'MORELIA', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (356, N'PUERTO RICO', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (357, N'SAN JOSE DEL FRAGUA', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (358, N'SAN VICENTE DEL CAGUAN', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (359, N'SOLANO', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (360, N'SOLITA', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (361, N'VALPARAISO', 7)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (362, N'POPAYAN', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (363, N'ALMAGUER', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (364, N'ARGELIA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (365, N'BALBOA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (366, N'BOLIVAR', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (367, N'BUENOS AIRES', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (368, N'CAJIBIO', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (369, N'CALDONO', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (370, N'CALOTO', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (371, N'CORINTO', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (372, N'EL TAMBO', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (373, N'FLORENCIA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (374, N'GUACHENE', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (375, N'GUAPI', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (376, N'INZA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (377, N'JAMBALO', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (378, N'LA SIERRA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (379, N'LA VEGA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (380, N'LOPEZ', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (381, N'MERCADERES', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (382, N'MIRANDA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (383, N'MORALES', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (384, N'PADILLA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (385, N'PAEZ', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (386, N'PATIA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (387, N'PIAMONTE', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (388, N'PIENDAMO', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (389, N'PUERTO TEJADA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (390, N'PURACE', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (391, N'ROSAS', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (392, N'SAN SEBASTIAN', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (393, N'SANTANDER DE QUILICHAO', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (394, N'SANTA ROSA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (395, N'SILVIA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (396, N'SOTARA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (397, N'SUAREZ', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (398, N'SUCRE', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (399, N'TIMBIO', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (400, N'TIMBIQUI', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (401, N'TORIBIO', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (402, N'TOTORO', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (403, N'VILLA RICA', 8)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (404, N'VALLEDUPAR', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (405, N'AGUACHICA', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (406, N'AGUSTIN CODAZZI', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (407, N'ASTREA', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (408, N'BECERRIL', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (409, N'BOSCONIA', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (410, N'CHIMICHAGUA', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (411, N'CHIRIGUANA', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (412, N'CURUMANI', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (413, N'EL COPEY', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (414, N'EL PASO', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (415, N'GAMARRA', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (416, N'GONZALEZ', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (417, N'LA GLORIA', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (418, N'LA JAGUA DE IBIRICO', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (419, N'MANAURE', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (420, N'PAILITAS', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (421, N'PELAYA', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (422, N'PUEBLO BELLO', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (423, N'RIO DE ORO', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (424, N'LA PAZ', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (425, N'SAN ALBERTO', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (426, N'SAN DIEGO', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (427, N'SAN MARTIN', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (428, N'TAMALAMEQUE', 9)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (429, N'MONTERIA', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (430, N'AYAPEL', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (431, N'BUENAVISTA', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (432, N'CANALETE', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (433, N'CERETE', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (434, N'CHIMA', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (435, N'CHINU', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (436, N'CIENAGA DE ORO', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (437, N'COTORRA', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (438, N'LA APARTADA', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (439, N'LORICA', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (440, N'LOS CORDOBAS', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (441, N'MOMIL', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (442, N'MONTELIBANO', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (443, N'MOÃ‘ITOS', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (444, N'PLANETA RICA', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (445, N'PUEBLO NUEVO', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (446, N'PUERTO ESCONDIDO', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (447, N'PUERTO LIBERTADOR', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (448, N'PURISIMA', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (449, N'SAHAGUN', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (450, N'SAN ANDRES SOTAVENTO', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (451, N'SAN ANTERO', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (452, N'SAN BERNARDO DEL VIENTO', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (453, N'SAN CARLOS', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (454, N'SAN PELAYO', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (455, N'TIERRALTA', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (456, N'VALENCIA', 10)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (457, N'AGUA DE DIOS', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (458, N'ALBAN', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (459, N'ANAPOIMA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (460, N'ANOLAIMA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (461, N'ARBELAEZ', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (462, N'BELTRAN', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (463, N'BITUIMA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (464, N'BOJACA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (465, N'CABRERA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (466, N'CACHIPAY', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (467, N'CAJICA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (468, N'CAPARRAPI', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (469, N'CAQUEZA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (470, N'CARMEN DE CARUPA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (471, N'CHAGUANI', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (472, N'CHIA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (473, N'CHIPAQUE', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (474, N'CHOACHI', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (475, N'CHOCONTA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (476, N'COGUA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (477, N'COTA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (478, N'CUCUNUBA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (479, N'EL COLEGIO', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (480, N'EL PEÃ‘ON', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (481, N'EL ROSAL', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (482, N'FACATATIVA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (483, N'FOMEQUE', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (484, N'FOSCA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (485, N'FUNZA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (486, N'FUQUENE', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (487, N'FUSAGASUGA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (488, N'GACHALA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (489, N'GACHANCIPA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (490, N'GACHETA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (491, N'GAMA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (492, N'GIRARDOT', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (493, N'GRANADA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (494, N'GUACHETA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (495, N'GUADUAS', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (496, N'GUASCA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (497, N'GUATAQUI', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (498, N'GUATAVITA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (499, N'GUAYABAL DE SIQUIMA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (500, N'GUAYABETAL', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (501, N'GUTIERREZ', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (502, N'JERUSALEN', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (503, N'JUNIN', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (504, N'LA CALERA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (505, N'LA MESA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (506, N'LA PALMA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (507, N'LA PEÃ‘A', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (508, N'LA VEGA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (509, N'LENGUAZAQUE', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (510, N'MACHETA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (511, N'MADRID', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (512, N'MANTA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (513, N'MEDINA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (514, N'MOSQUERA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (515, N'NARIÃ‘O', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (516, N'NEMOCON', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (517, N'NILO', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (518, N'NIMAIMA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (519, N'NOCAIMA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (520, N'VENECIA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (521, N'PACHO', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (522, N'PAIME', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (523, N'PANDI', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (524, N'PARATEBUENO', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (525, N'PASCA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (526, N'PUERTO SALGAR', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (527, N'PULI', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (528, N'QUEBRADANEGRA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (529, N'QUETAME', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (530, N'QUIPILE', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (531, N'APULO', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (532, N'RICAURTE', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (533, N'SAN ANTONIO DEL TEQUENDAMA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (534, N'SAN BERNARDO', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (535, N'SAN CAYETANO', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (536, N'SAN FRANCISCO', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (537, N'SAN JUAN DE RIO SECO', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (538, N'SASAIMA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (539, N'SESQUILE', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (540, N'SIBATE', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (541, N'SILVANIA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (542, N'SIMIJACA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (543, N'SOACHA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (544, N'SOPO', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (545, N'SUBACHOQUE', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (546, N'SUESCA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (547, N'SUPATA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (548, N'SUSA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (549, N'SUTATAUSA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (550, N'TABIO', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (551, N'TAUSA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (552, N'TENA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (553, N'TENJO', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (554, N'TIBACUY', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (555, N'TIBIRITA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (556, N'TOCAIMA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (557, N'TOCANCIPA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (558, N'TOPAIPI', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (559, N'UBALA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (560, N'UBAQUE', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (561, N'VILLA DE SAN DIEGO DE UBATE', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (562, N'UNE', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (563, N'UTICA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (564, N'VERGARA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (565, N'VIANI', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (566, N'VILLAGOMEZ', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (567, N'VILLAPINZON', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (568, N'VILLETA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (569, N'VIOTA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (570, N'YACOPI', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (571, N'ZIPACON', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (572, N'ZIPAQUIRA', 11)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (573, N'QUIBDO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (574, N'ACANDI', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (575, N'ALTO BAUDO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (576, N'ATRATO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (577, N'BAGADO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (578, N'BAHIA SOLANO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (579, N'BAJO BAUDO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (580, N'BOJAYA', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (581, N'EL CANTON DEL SAN PABLO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (582, N'CARMEN DEL DARIEN', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (583, N'CERTEGUI', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (584, N'CONDOTO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (585, N'EL CARMEN DE ATRATO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (586, N'EL LITORAL DEL SAN JUAN', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (587, N'ISTMINA', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (588, N'JURADO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (589, N'LLORO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (590, N'MEDIO ATRATO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (591, N'MEDIO BAUDO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (592, N'MEDIO SAN JUAN', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (593, N'NOVITA', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (594, N'NUQUI', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (595, N'RIO IRO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (596, N'RIO QUITO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (597, N'RIOSUCIO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (598, N'SAN JOSE DEL PALMAR', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (599, N'SIPI', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (600, N'TADO', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (601, N'UNGUIA', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (602, N'UNION PANAMERICANA', 12)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (603, N'NEIVA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (604, N'ACEVEDO', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (605, N'AGRADO', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (606, N'AIPE', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (607, N'ALGECIRAS', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (608, N'ALTAMIRA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (609, N'BARAYA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (610, N'CAMPOALEGRE', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (611, N'COLOMBIA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (612, N'ELIAS', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (613, N'GARZON', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (614, N'GIGANTE', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (615, N'GUADALUPE', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (616, N'HOBO', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (617, N'IQUIRA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (618, N'ISNOS', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (619, N'LA ARGENTINA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (620, N'LA PLATA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (621, N'NATAGA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (622, N'OPORAPA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (623, N'PAICOL', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (624, N'PALERMO', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (625, N'PALESTINA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (626, N'PITAL', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (627, N'PITALITO', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (628, N'RIVERA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (629, N'SALADOBLANCO', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (630, N'SAN AGUSTIN', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (631, N'SANTA MARIA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (632, N'SUAZA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (633, N'TARQUI', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (634, N'TESALIA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (635, N'TELLO', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (636, N'TERUEL', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (637, N'TIMANA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (638, N'VILLAVIEJA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (639, N'YAGUARA', 13)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (640, N'RIOHACHA', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (641, N'ALBANIA', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (642, N'BARRANCAS', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (643, N'DIBULLA', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (644, N'DISTRACCION', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (645, N'EL MOLINO', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (646, N'FONSECA', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (647, N'HATONUEVO', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (648, N'LA JAGUA DEL PILAR', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (649, N'MAICAO', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (650, N'MANAURE', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (651, N'SAN JUAN DEL CESAR', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (652, N'URIBIA', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (653, N'URUMITA', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (654, N'VILLANUEVA', 14)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (655, N'SANTA MARTA', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (656, N'ALGARROBO', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (657, N'ARACATACA', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (658, N'ARIGUANI', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (659, N'CERRO SAN ANTONIO', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (660, N'CHIBOLO', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (661, N'CIENAGA', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (662, N'CONCORDIA', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (663, N'EL BANCO', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (664, N'EL PIÃ‘ON', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (665, N'EL RETEN', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (666, N'FUNDACION', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (667, N'GUAMAL', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (668, N'NUEVA GRANADA', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (669, N'PEDRAZA', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (670, N'PIJIÃ‘O DEL CARMEN', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (671, N'PIVIJAY', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (672, N'PLATO', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (673, N'PUEBLOVIEJO', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (674, N'REMOLINO', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (675, N'SABANAS DE SAN ANGEL', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (676, N'SALAMINA', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (677, N'SAN SEBASTIAN DE BUENAVISTA', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (678, N'SAN ZENON', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (679, N'SANTA ANA', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (680, N'SANTA BARBARA DE PINTO', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (681, N'SITIONUEVO', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (682, N'TENERIFE', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (683, N'ZAPAYAN', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (684, N'ZONA BANANERA', 15)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (685, N'VILLAVICENCIO', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (686, N'ACACIAS', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (687, N'BARRANCA DE UPIA', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (688, N'CABUYARO', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (689, N'CASTILLA LA NUEVA', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (690, N'CUBARRAL', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (691, N'CUMARAL', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (692, N'EL CALVARIO', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (693, N'EL CASTILLO', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (694, N'EL DORADO', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (695, N'FUENTE DE ORO', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (696, N'GRANADA', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (697, N'GUAMAL', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (698, N'MAPIRIPAN', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (699, N'MESETAS', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (700, N'LA MACARENA', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (701, N'URIBE', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (702, N'LEJANIAS', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (703, N'PUERTO CONCORDIA', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (704, N'PUERTO GAITAN', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (705, N'PUERTO LOPEZ', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (706, N'PUERTO LLERAS', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (707, N'PUERTO RICO', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (708, N'RESTREPO', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (709, N'SAN CARLOS DE GUAROA', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (710, N'SAN JUAN DE ARAMA', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (711, N'SAN JUANITO', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (712, N'SAN MARTIN', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (713, N'VISTAHERMOSA', 16)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (714, N'PASTO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (715, N'ALBAN', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (716, N'ALDANA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (717, N'ANCUYA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (718, N'ARBOLEDA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (719, N'BARBACOAS', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (720, N'BELEN', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (721, N'BUESACO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (722, N'COLON', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (723, N'CONSACA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (724, N'CONTADERO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (725, N'CORDOBA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (726, N'CUASPUD', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (727, N'CUMBAL', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (728, N'CUMBITARA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (729, N'CHACHAGsI', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (730, N'EL CHARCO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (731, N'EL PEÃ‘OL', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (732, N'EL ROSARIO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (733, N'EL TABLON DE GOMEZ', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (734, N'EL TAMBO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (735, N'FUNES', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (736, N'GUACHUCAL', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (737, N'GUAITARILLA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (738, N'GUALMATAN', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (739, N'ILES', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (740, N'IMUES', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (741, N'IPIALES', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (742, N'LA CRUZ', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (743, N'LA FLORIDA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (744, N'LA LLANADA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (745, N'LA TOLA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (746, N'LA UNION', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (747, N'LEIVA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (748, N'LINARES', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (749, N'LOS ANDES', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (750, N'MAGsI', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (751, N'MALLAMA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (752, N'MOSQUERA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (753, N'NARIÃ‘O', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (754, N'OLAYA HERRERA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (755, N'OSPINA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (756, N'FRANCISCO PIZARRO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (757, N'POLICARPA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (758, N'POTOSI', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (759, N'PROVIDENCIA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (760, N'PUERRES', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (761, N'PUPIALES', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (762, N'RICAURTE', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (763, N'ROBERTO PAYAN', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (764, N'SAMANIEGO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (765, N'SANDONA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (766, N'SAN BERNARDO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (767, N'SAN LORENZO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (768, N'SAN PABLO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (769, N'SAN PEDRO DE CARTAGO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (770, N'SANTA BARBARA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (771, N'SANTACRUZ', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (772, N'SAPUYES', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (773, N'TAMINANGO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (774, N'TANGUA', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (775, N'SAN ANDRES DE TUMACO', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (776, N'TUQUERRES', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (777, N'YACUANQUER', 17)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (778, N'CUCUTA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (779, N'ABREGO', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (780, N'ARBOLEDAS', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (781, N'BOCHALEMA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (782, N'BUCARASICA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (783, N'CACOTA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (784, N'CACHIRA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (785, N'CHINACOTA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (786, N'CHITAGA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (787, N'CONVENCION', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (788, N'CUCUTILLA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (789, N'DURANIA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (790, N'EL CARMEN', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (791, N'EL TARRA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (792, N'EL ZULIA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (793, N'GRAMALOTE', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (794, N'HACARI', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (795, N'HERRAN', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (796, N'LABATECA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (797, N'LA ESPERANZA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (798, N'LA PLAYA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (799, N'LOS PATIOS', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (800, N'LOURDES', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (801, N'MUTISCUA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (802, N'OCAÃ‘A', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (803, N'PAMPLONA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (804, N'PAMPLONITA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (805, N'PUERTO SANTANDER', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (806, N'RAGONVALIA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (807, N'SALAZAR', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (808, N'SAN CALIXTO', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (809, N'SAN CAYETANO', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (810, N'SANTIAGO', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (811, N'SARDINATA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (812, N'SILOS', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (813, N'TEORAMA', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (814, N'TIBU', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (815, N'TOLEDO', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (816, N'VILLA CARO', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (817, N'VILLA DEL ROSARIO', 18)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (818, N'ARMENIA', 19)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (819, N'BUENAVISTA', 19)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (820, N'CALARCA', 19)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (821, N'CIRCASIA', 19)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (822, N'CORDOBA', 19)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (823, N'FILANDIA', 19)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (824, N'GENOVA', 19)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (825, N'LA TEBAIDA', 19)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (826, N'MONTENEGRO', 19)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (827, N'PIJAO', 19)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (828, N'QUIMBAYA', 19)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (829, N'SALENTO', 19)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (830, N'PEREIRA', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (831, N'APIA', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (832, N'BALBOA', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (833, N'BELEN DE UMBRIA', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (834, N'DOSQUEBRADAS', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (835, N'GUATICA', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (836, N'LA CELIA', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (837, N'LA VIRGINIA', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (838, N'MARSELLA', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (839, N'MISTRATO', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (840, N'PUEBLO RICO', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (841, N'QUINCHIA', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (842, N'SANTA ROSA DE CABAL', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (843, N'SANTUARIO', 20)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (844, N'BUCARAMANGA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (845, N'AGUADA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (846, N'ALBANIA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (847, N'ARATOCA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (848, N'BARBOSA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (849, N'BARICHARA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (850, N'BARRANCABERMEJA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (851, N'BETULIA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (852, N'BOLIVAR', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (853, N'CABRERA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (854, N'CALIFORNIA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (855, N'CAPITANEJO', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (856, N'CARCASI', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (857, N'CEPITA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (858, N'CERRITO', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (859, N'CHARALA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (860, N'CHARTA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (861, N'CHIMA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (862, N'CHIPATA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (863, N'CIMITARRA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (864, N'CONCEPCION', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (865, N'CONFINES', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (866, N'CONTRATACION', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (867, N'COROMORO', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (868, N'CURITI', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (869, N'EL CARMEN DE CHUCURI', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (870, N'EL GUACAMAYO', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (871, N'EL PEÃ‘ON', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (872, N'EL PLAYON', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (873, N'ENCINO', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (874, N'ENCISO', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (875, N'FLORIAN', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (876, N'FLORIDABLANCA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (877, N'GALAN', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (878, N'GAMBITA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (879, N'GIRON', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (880, N'GUACA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (881, N'GUADALUPE', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (882, N'GUAPOTA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (883, N'GUAVATA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (884, N'GsEPSA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (885, N'HATO', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (886, N'JESUS MARIA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (887, N'JORDAN', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (888, N'LA BELLEZA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (889, N'LANDAZURI', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (890, N'LA PAZ', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (891, N'LEBRIJA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (892, N'LOS SANTOS', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (893, N'MACARAVITA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (894, N'MALAGA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (895, N'MATANZA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (896, N'MOGOTES', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (897, N'MOLAGAVITA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (898, N'OCAMONTE', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (899, N'OIBA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (900, N'ONZAGA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (901, N'PALMAR', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (902, N'PALMAS DEL SOCORRO', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (903, N'PARAMO', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (904, N'PIEDECUESTA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (905, N'PINCHOTE', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (906, N'PUENTE NACIONAL', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (907, N'PUERTO PARRA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (908, N'PUERTO WILCHES', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (909, N'RIONEGRO', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (910, N'SABANA DE TORRES', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (911, N'SAN ANDRES', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (912, N'SAN BENITO', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (913, N'SAN GIL', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (914, N'SAN JOAQUIN', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (915, N'SAN JOSE DE MIRANDA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (916, N'SAN MIGUEL', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (917, N'SAN VICENTE DE CHUCURI', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (918, N'SANTA BARBARA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (919, N'SANTA HELENA DEL OPON', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (920, N'SIMACOTA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (921, N'SOCORRO', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (922, N'SUAITA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (923, N'SUCRE', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (924, N'SURATA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (925, N'TONA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (926, N'VALLE DE SAN JOSE', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (927, N'VELEZ', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (928, N'VETAS', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (929, N'VILLANUEVA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (930, N'ZAPATOCA', 21)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (931, N'SINCELEJO', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (932, N'BUENAVISTA', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (933, N'CAIMITO', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (934, N'COLOSO', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (935, N'COROZAL', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (936, N'COVEÃ‘AS', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (937, N'CHALAN', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (938, N'EL ROBLE', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (939, N'GALERAS', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (940, N'GUARANDA', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (941, N'LA UNION', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (942, N'LOS PALMITOS', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (943, N'MAJAGUAL', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (944, N'MORROA', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (945, N'OVEJAS', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (946, N'PALMITO', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (947, N'SAMPUES', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (948, N'SAN BENITO ABAD', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (949, N'SAN JUAN DE BETULIA', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (950, N'SAN MARCOS', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (951, N'SAN ONOFRE', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (952, N'SAN PEDRO', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (953, N'SAN LUIS DE SINCE', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (954, N'SUCRE', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (955, N'SANTIAGO DE TOLU', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (956, N'TOLU VIEJO', 22)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (957, N'IBAGUE', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (958, N'ALPUJARRA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (959, N'ALVARADO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (960, N'AMBALEMA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (961, N'ANZOATEGUI', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (962, N'ARMERO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (963, N'ATACO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (964, N'CAJAMARCA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (965, N'CARMEN DE APICALA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (966, N'CASABIANCA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (967, N'CHAPARRAL', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (968, N'COELLO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (969, N'COYAIMA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (970, N'CUNDAY', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (971, N'DOLORES', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (972, N'ESPINAL', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (973, N'FALAN', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (974, N'FLANDES', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (975, N'FRESNO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (976, N'GUAMO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (977, N'HERVEO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (978, N'HONDA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (979, N'ICONONZO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (980, N'LERIDA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (981, N'LIBANO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (982, N'MARIQUITA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (983, N'MELGAR', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (984, N'MURILLO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (985, N'NATAGAIMA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (986, N'ORTEGA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (987, N'PALOCABILDO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (988, N'PIEDRAS', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (989, N'PLANADAS', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (990, N'PRADO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (991, N'PURIFICACION', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (992, N'RIOBLANCO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (993, N'RONCESVALLES', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (994, N'ROVIRA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (995, N'SALDAÃ‘A', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (996, N'SAN ANTONIO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (997, N'SAN LUIS', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (998, N'SANTA ISABEL', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (999, N'SUAREZ', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1000, N'VALLE DE SAN JUAN', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1001, N'VENADILLO', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1002, N'VILLAHERMOSA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1003, N'VILLARRICA', 23)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1004, N'CALI', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1005, N'ALCALA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1006, N'ANDALUCIA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1007, N'ANSERMANUEVO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1008, N'ARGELIA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1009, N'BOLIVAR', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1010, N'BUENAVENTURA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1011, N'GUADALAJARA DE BUGA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1012, N'BUGALAGRANDE', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1013, N'CAICEDONIA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1014, N'CALIMA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1015, N'CANDELARIA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1016, N'CARTAGO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1017, N'DAGUA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1018, N'EL AGUILA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1019, N'EL CAIRO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1020, N'EL CERRITO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1021, N'EL DOVIO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1022, N'FLORIDA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1023, N'GINEBRA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1024, N'GUACARI', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1025, N'JAMUNDI', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1026, N'LA CUMBRE', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1027, N'LA UNION', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1028, N'LA VICTORIA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1029, N'OBANDO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1030, N'PALMIRA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1031, N'PRADERA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1032, N'RESTREPO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1033, N'RIOFRIO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1034, N'ROLDANILLO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1035, N'SAN PEDRO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1036, N'SEVILLA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1037, N'TORO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1038, N'TRUJILLO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1039, N'TULUA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1040, N'ULLOA', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1041, N'VERSALLES', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1042, N'VIJES', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1043, N'YOTOCO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1044, N'YUMBO', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1045, N'ZARZAL', 24)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1046, N'ARAUCA', 25)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1047, N'ARAUQUITA', 25)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1048, N'CRAVO NORTE', 25)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1049, N'FORTUL', 25)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1050, N'PUERTO RONDON', 25)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1051, N'SARAVENA', 25)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1052, N'TAME', 25)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1053, N'YOPAL', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1054, N'AGUAZUL', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1055, N'CHAMEZA', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1056, N'HATO COROZAL', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1057, N'LA SALINA', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1058, N'MANI', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1059, N'MONTERREY', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1060, N'NUNCHIA', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1061, N'OROCUE', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1062, N'PAZ DE ARIPORO', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1063, N'PORE', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1064, N'RECETOR', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1065, N'SABANALARGA', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1066, N'SACAMA', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1067, N'SAN LUIS DE PALENQUE', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1068, N'TAMARA', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1069, N'TAURAMENA', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1070, N'TRINIDAD', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1071, N'VILLANUEVA', 26)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1072, N'MOCOA', 27)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1073, N'COLON', 27)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1074, N'ORITO', 27)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1075, N'PUERTO ASIS', 27)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1076, N'PUERTO CAICEDO', 27)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1077, N'PUERTO GUZMAN', 27)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1078, N'LEGUIZAMO', 27)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1079, N'SIBUNDOY', 27)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1080, N'SAN FRANCISCO', 27)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1081, N'SAN MIGUEL', 27)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1082, N'SANTIAGO', 27)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1083, N'VALLE DEL GUAMUEZ', 27)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1084, N'VILLAGARZON', 27)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1085, N'SAN ANDRES', 28)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1086, N'PROVIDENCIA', 28)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1087, N'LETICIA', 29)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1088, N'EL ENCANTO', 29)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1089, N'LA CHORRERA', 29)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1090, N'LA PEDRERA', 29)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1091, N'LA VICTORIA', 29)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1092, N'MIRITI - PARANA', 29)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1093, N'PUERTO ALEGRIA', 29)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1094, N'PUERTO ARICA', 29)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1095, N'PUERTO NARIÃ‘O', 29)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1096, N'PUERTO SANTANDER', 29)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1097, N'TARAPACA', 29)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1098, N'INIRIDA', 30)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1099, N'BARRANCO MINAS', 30)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1100, N'MAPIRIPANA', 30)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1101, N'SAN FELIPE', 30)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1102, N'PUERTO COLOMBIA', 30)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1103, N'LA GUADALUPE', 30)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1104, N'CACAHUAL', 30)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1105, N'PANA PANA', 30)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1106, N'MORICHAL', 30)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1107, N'SAN JOSE DEL GUAVIARE', 31)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1108, N'CALAMAR', 31)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1109, N'EL RETORNO', 31)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1110, N'MIRAFLORES', 31)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1111, N'MITU', 32)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1112, N'CARURU', 32)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1113, N'PACOA', 32)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1114, N'TARAIRA', 32)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1115, N'PAPUNAUA', 32)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1116, N'YAVARATE', 32)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1117, N'PUERTO CARREÃ‘O', 33)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1118, N'LA PRIMAVERA', 33)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1119, N'SANTA ROSALIA', 33)
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1120, N'CUMARIBO', 33)
GO
INSERT [dbo].[Persona] ([Cedula], [Nombre], [EstadoCivilID]) VALUES (1006791459, N'Jose Jorge', 1)
GO
SET IDENTITY_INSERT [dbo].[TipoVivienda] ON 
GO
INSERT [dbo].[TipoVivienda] ([ID], [Nombre]) VALUES (1, N'Casa')
GO
SET IDENTITY_INSERT [dbo].[TipoVivienda] OFF
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [FK_municipios_Departamento] FOREIGN KEY([DepartamentoID])
REFERENCES [dbo].[Departamento] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [FK_municipios_Departamento]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_EstadoCivil] FOREIGN KEY([EstadoCivilID])
REFERENCES [dbo].[EstadoCivil] ([ID])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_EstadoCivil]
GO
ALTER TABLE [dbo].[PersonaVivienda]  WITH CHECK ADD  CONSTRAINT [FK_Posee_Persona] FOREIGN KEY([CedulaID])
REFERENCES [dbo].[Persona] ([Cedula])
GO
ALTER TABLE [dbo].[PersonaVivienda] CHECK CONSTRAINT [FK_Posee_Persona]
GO
ALTER TABLE [dbo].[PersonaVivienda]  WITH CHECK ADD  CONSTRAINT [FK_Posee_vivienda] FOREIGN KEY([EscrituraID])
REFERENCES [dbo].[Vivienda] ([Escritura])
GO
ALTER TABLE [dbo].[PersonaVivienda] CHECK CONSTRAINT [FK_Posee_vivienda]
GO
ALTER TABLE [dbo].[Vivienda]  WITH CHECK ADD  CONSTRAINT [FK_vivienda_municipios] FOREIGN KEY([MunicipioID])
REFERENCES [dbo].[Municipio] ([ID])
GO
ALTER TABLE [dbo].[Vivienda] CHECK CONSTRAINT [FK_vivienda_municipios]
GO
ALTER TABLE [dbo].[Vivienda]  WITH CHECK ADD  CONSTRAINT [FK_vivienda_TipoVivienda] FOREIGN KEY([TipoViviendaID])
REFERENCES [dbo].[TipoVivienda] ([ID])
GO
ALTER TABLE [dbo].[Vivienda] CHECK CONSTRAINT [FK_vivienda_TipoVivienda]
GO
USE [master]
GO
ALTER DATABASE [Viviendas] SET  READ_WRITE 
GO

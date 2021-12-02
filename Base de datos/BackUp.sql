Create DataBase ejercicios;
USE [ejercicios]
GO
/****** Object:  Database [ejercicios]    Script Date: 02/12/2021 4:07:06 ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcDato](
	[usuario] [varchar](100) NULL,
	[pass] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lista]    Script Date: 02/12/2021 4:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lista](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DPI] [float] NOT NULL,
	[nombre] [varchar](100) NULL,
	[apellido] [varchar](100) NULL,
	[cantidadhijos] [int] NULL,
	[usuariocrea] [varchar](100) NULL,
	[feccrea] [varchar](100) NULL,
	[estado] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegPrin]    Script Date: 02/12/2021 4:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegPrin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[fecnac] [varchar](100) NULL,
	[usuario] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salarios]    Script Date: 02/12/2021 4:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salarios](
	[salarioTotal] [float] NULL,
	[salarioLiquido] [float] NULL,
	[salarioBase] [float] NULL,
	[idlista] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Token]    Script Date: 02/12/2021 4:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Token](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](100) NULL,
	[clave] [varchar](100) NULL,
	[estado] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[valores]    Script Date: 02/12/2021 4:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[valores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[activos] [varchar](50) NULL,
	[valor] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AcDato] ([usuario], [pass]) VALUES (N'jperez', N'1234')
INSERT [dbo].[AcDato] ([usuario], [pass]) VALUES (N'jfunez', N'705788')
INSERT [dbo].[AcDato] ([usuario], [pass]) VALUES (N'gquezada', N'')
INSERT [dbo].[AcDato] ([usuario], [pass]) VALUES (N'jjordi', N'1234567')
INSERT [dbo].[AcDato] ([usuario], [pass]) VALUES (N'sdf', N'dfasdf')
INSERT [dbo].[AcDato] ([usuario], [pass]) VALUES (N'asdffasdf', N'asdfasd')
INSERT [dbo].[AcDato] ([usuario], [pass]) VALUES (N'mmarrtinez', N'123456')
GO
SET IDENTITY_INSERT [dbo].[lista] ON 

INSERT [dbo].[lista] ([id], [DPI], [nombre], [apellido], [cantidadhijos], [usuariocrea], [feccrea], [estado]) VALUES (1, 3341462241321, N'Guillermo Augusto', N'Tello Castro', 3, N'system', N'GETDATE', N'0')
INSERT [dbo].[lista] ([id], [DPI], [nombre], [apellido], [cantidadhijos], [usuariocrea], [feccrea], [estado]) VALUES (2, 3341462241301, N'Jordy Quezada', N'Tello Funez', 2, N'system', N'GETDATE', N'1')
INSERT [dbo].[lista] ([id], [DPI], [nombre], [apellido], [cantidadhijos], [usuariocrea], [feccrea], [estado]) VALUES (3, 3341462241330, N'Sandra', N'Perez', 2, N'system', N'GETDATE', N'0')
SET IDENTITY_INSERT [dbo].[lista] OFF
GO
SET IDENTITY_INSERT [dbo].[RegPrin] ON 

INSERT [dbo].[RegPrin] ([id], [nombre], [email], [fecnac], [usuario]) VALUES (1, N'juan', N'guille4.gq@gmail.com', N'11/11/11', N'jfunez')
INSERT [dbo].[RegPrin] ([id], [nombre], [email], [fecnac], [usuario]) VALUES (2, N'Guillermo Augusto', N'jorgeroyce0@gmail.com', N'11/20/2021', N'gquezada')
INSERT [dbo].[RegPrin] ([id], [nombre], [email], [fecnac], [usuario]) VALUES (3, N'Jordy Quezada', N'jordi11904@gmail.com', N'11/21/2222', N'jjordi')
INSERT [dbo].[RegPrin] ([id], [nombre], [email], [fecnac], [usuario]) VALUES (4, N'asdfasdf', N'adfasd', N'asdf', N'sdf')
INSERT [dbo].[RegPrin] ([id], [nombre], [email], [fecnac], [usuario]) VALUES (5, N'fasdfasdf', N'asdfasdf', N'asdfa', N'asdffasdf')
INSERT [dbo].[RegPrin] ([id], [nombre], [email], [fecnac], [usuario]) VALUES (6, N'Mario Martinez', N'jorgero@gmail.com', N'11/20/2021', N'mmarrtinez')
SET IDENTITY_INSERT [dbo].[RegPrin] OFF
GO
INSERT [dbo].[salarios] ([salarioTotal], [salarioLiquido], [salarioBase], [idlista]) VALUES (3649, 3499, 3000, 1)
INSERT [dbo].[salarios] ([salarioTotal], [salarioLiquido], [salarioBase], [idlista]) VALUES (2916, 2796, 2400, 2)
INSERT [dbo].[salarios] ([salarioTotal], [salarioLiquido], [salarioBase], [idlista]) VALUES (3016, 2891, 2500, 3)
GO
SET IDENTITY_INSERT [dbo].[Token] ON 

INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (1, N'guille4.gq@gmail.com', N'280464', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (2, N'guille4.gq@gmail.com', N'601141', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (3, N'guille4.gq@gmail.com', N'876961', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (4, N'guille4.gq@gmail.com', N'569036', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (5, N'guille4.gq@gmail.com', N'758111', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (6, N'guille4.gq@gmail.com', N'475552', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (7, N'guille4.gq@gmail.com', N'244591', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (8, N'guille4.gq@gmail.com', N'221401', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (9, N'guille4.gq@gmail.com', N'663971', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (10, N'guille4.gq@gmail.com', N'793983', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (11, N'guille4.gq@gmail.com', N'476348', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (12, N'guille4.gq@gmail.com', N'465116', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (13, N'guille4.gq@gmail.com', N'189296', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (14, N'guille4.gq@gmail.com', N'906164', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (15, N'guille4.gq@gmail.com', N'845581', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (16, N'guille4.gq@gmail.com', N'976389', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (17, N'guille4.gq@gmail.com', N'400835', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (18, N'guille4.gq@gmail.com', N'687886', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (19, N'guille4.gq@gmail.com', N'710280', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (20, N'guille4.gq@gmail.com', N'284957', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (21, N'guille4.gq@gmail.com', N'355251', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (22, N'guille4.gq@gmail.com', N'488305', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (23, N'guille4.gq@gmail.com', N'289449', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (24, N'guille4.gq@gmail.com', N'313365', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (25, N'guille4.gq@gmail.com', N'379166', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (26, N'guille4.gq@gmail.com', N'960734', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (27, N'guille4.gq@gmail.com', N'163860', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (28, N'guille4.gq@gmail.com', N'181036', N'0')
INSERT [dbo].[Token] ([id], [email], [clave], [estado]) VALUES (29, N'guille4.gq@gmail.com', N'705788', N'0')
SET IDENTITY_INSERT [dbo].[Token] OFF
GO
SET IDENTITY_INSERT [dbo].[valores] ON 

INSERT [dbo].[valores] ([id], [activos], [valor]) VALUES (1, N'IGSS', 4.83)
INSERT [dbo].[valores] ([id], [activos], [valor]) VALUES (2, N'IRTRA', 1)
INSERT [dbo].[valores] ([id], [activos], [valor]) VALUES (3, N'Bono de Paternidad', 133)
INSERT [dbo].[valores] ([id], [activos], [valor]) VALUES (4, N'Bono decreto', 250)
SET IDENTITY_INSERT [dbo].[valores] OFF
GO
ALTER TABLE [dbo].[salarios]  WITH CHECK ADD  CONSTRAINT [fk_lista] FOREIGN KEY([idlista])
REFERENCES [dbo].[lista] ([id])
GO
ALTER TABLE [dbo].[salarios] CHECK CONSTRAINT [fk_lista]
GO
/****** Object:  StoredProcedure [dbo].[loguin]    Script Date: 02/12/2021 4:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[loguin] 
 
 @email varchar(100)

AS
Begin
select * from RegPrin where  email = email;


end
GO
/****** Object:  StoredProcedure [dbo].[SPCALC]    Script Date: 02/12/2021 4:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPCALC] 
  @DPI FLOAT,
 @nombre varchar(100),
 @apellido varchar(100),
 @hijos int,
 @usercrea varchar(100) = 'system',
 @fec varchar(100)	= GETDATE,
 @estado varchar(2)	= '1',
 @salarioBase numeric

AS
declare
@IGGS INT,
@TEMP INT,
@TEMPID INT,
@IRTRA INT,
@PADRE INT,
@BONO INT,
@TOTALDESC INT
Begin

insert into lista(dpi,nombre,apellido,cantidadhijos,usuariocrea,feccrea,estado) values( @DPI,@nombre,@apellido,@hijos,@usercrea,@fec,@estado )
SET @TEMPID = (SELECT ID FROM lista WHERE LISTA.DPI = @DPI)
insert into salarios(salarioBase,idlista) values(@salarioBase,@TEMPID)

SET @IGGS = (SELECT VALOR FROM VALORES WHERE ID=1)

SET @IGGS = (SELECT (salarioBase -salarioBase +((@salarioBase * @IGGS) / 100 ))NUM FROM salarios WHERE idlista = @TEMPID)
SET @IRTRA = (SELECT VALOR FROM VALORES WHERE ID=2)
SET @IRTRA = (SELECT (salarioBase -salarioBase +((@salarioBase * @IRTRA) / 100 ))NUM FROM salarios WHERE idlista = @TEMPID)
SET @PADRE = (SELECT VALOR FROM VALORES WHERE ID=3)
SET @PADRE = (SELECT (@PADRE * cantidadhijos) NUM FROM lista WHERE ID = @TEMPID)
SET @BONO = (SELECT VALOR FROM VALORES WHERE ID=4)
UPDATE salarios SET SALARIOTOTAL = @salarioBase + @PADRE + @BONO WHERE idlista = @TEMPID
SET @TOTALDESC = (@IGGS + @IRTRA)
UPDATE salarios SET salarioLiquido = salarioTotal - @TOTALDESC WHERE idlista = @TEMPID
END;








GO
/****** Object:  StoredProcedure [dbo].[spi_registrar]    Script Date: 02/12/2021 4:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spi_registrar] 
 @nombre varchar(100),
 @email varchar(100),
 @fecnac varchar(100),
 @usuario varchar(100),
  @pass varchar(100)
AS
Begin


insert into RegPrin(nombre,email,fecnac,usuario) values( @nombre,@email,@fecnac,@usuario)
insert into AcDato(usuario,pass) values(@usuario,@pass)
end;
GO
/****** Object:  StoredProcedure [dbo].[spNuevo]    Script Date: 02/12/2021 4:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spNuevo] 
 
 @email varchar(100),
 @pass varchar(100)

AS
Begin
update AcDato set pass = @pass from RegPrin,AcDato where RegPrin.email = @email and RegPrin.usuario = AcDato.usuario;
update Token set estado = '0' from RegPrin,token where RegPrin.email = @email and RegPrin.email = token.email;


end;
GO
/****** Object:  StoredProcedure [dbo].[spToken]    Script Date: 02/12/2021 4:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spToken] 
 
 @email varchar(100),
 @pass varchar(100)

AS
Begin
insert into Token(email,clave,estado) values(@email,@pass,'1' )


end;
GO
USE [ejercicios]
GO
ALTER DATABASE [ejercicios] SET  READ_WRITE 
GO

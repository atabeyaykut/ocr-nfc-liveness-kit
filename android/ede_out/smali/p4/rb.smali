.class public final Lp4/rb;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lp4/rb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:[Landroid/graphics/Point;

.field public final f:Lp4/m7;

.field public final g:Lp4/ea;

.field public final h:Lp4/eb;

.field public final j:Lp4/qb;

.field public final k:Lp4/pb;

.field public final l:Lp4/k8;

.field public final m:Lp4/n4;

.field public final n:Lp4/o5;

.field public final p:Lp4/o6;

.field public final q:[B

.field public final r:Z

.field public final s:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp4/sb;

    invoke-direct {v0}, Lp4/sb;-><init>()V

    sput-object v0, Lp4/rb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls3/a;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I[Landroid/graphics/Point;Lp4/m7;Lp4/ea;Lp4/eb;Lp4/qb;Lp4/pb;Lp4/k8;Lp4/n4;Lp4/o5;Lp4/o6;[BZD)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ls3/a;-><init>()V

    move v1, p1

    iput v1, v0, Lp4/rb;->a:I

    move-object v1, p2

    iput-object v1, v0, Lp4/rb;->b:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lp4/rb;->q:[B

    move-object v1, p3

    iput-object v1, v0, Lp4/rb;->c:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lp4/rb;->d:I

    move-object v1, p5

    iput-object v1, v0, Lp4/rb;->e:[Landroid/graphics/Point;

    move/from16 v1, p16

    iput-boolean v1, v0, Lp4/rb;->r:Z

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lp4/rb;->s:D

    move-object v1, p6

    iput-object v1, v0, Lp4/rb;->f:Lp4/m7;

    move-object v1, p7

    iput-object v1, v0, Lp4/rb;->g:Lp4/ea;

    move-object v1, p8

    iput-object v1, v0, Lp4/rb;->h:Lp4/eb;

    move-object v1, p9

    iput-object v1, v0, Lp4/rb;->j:Lp4/qb;

    move-object v1, p10

    iput-object v1, v0, Lp4/rb;->k:Lp4/pb;

    move-object v1, p11

    iput-object v1, v0, Lp4/rb;->l:Lp4/k8;

    move-object v1, p12

    iput-object v1, v0, Lp4/rb;->m:Lp4/n4;

    move-object/from16 v1, p13

    iput-object v1, v0, Lp4/rb;->n:Lp4/o5;

    move-object/from16 v1, p14

    iput-object v1, v0, Lp4/rb;->p:Lp4/o6;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, v0}, Ls3/c;->r(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    iget v2, p0, Lp4/rb;->a:I

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    iget-object v2, p0, Lp4/rb;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    iget-object v2, p0, Lp4/rb;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    iget v2, p0, Lp4/rb;->d:I

    .line 27
    .line 28
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    iget-object v2, p0, Lp4/rb;->e:[Landroid/graphics/Point;

    .line 33
    .line 34
    invoke-static {p1, v1, v2, p2}, Ls3/c;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x7

    .line 38
    iget-object v2, p0, Lp4/rb;->f:Lp4/m7;

    .line 39
    .line 40
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    iget-object v2, p0, Lp4/rb;->g:Lp4/ea;

    .line 46
    .line 47
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 48
    .line 49
    .line 50
    const/16 v1, 0x9

    .line 51
    .line 52
    iget-object v2, p0, Lp4/rb;->h:Lp4/eb;

    .line 53
    .line 54
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 55
    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    iget-object v2, p0, Lp4/rb;->j:Lp4/qb;

    .line 60
    .line 61
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 62
    .line 63
    .line 64
    const/16 v1, 0xb

    .line 65
    .line 66
    iget-object v2, p0, Lp4/rb;->k:Lp4/pb;

    .line 67
    .line 68
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 69
    .line 70
    .line 71
    const/16 v1, 0xc

    .line 72
    .line 73
    iget-object v2, p0, Lp4/rb;->l:Lp4/k8;

    .line 74
    .line 75
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 76
    .line 77
    .line 78
    const/16 v1, 0xd

    .line 79
    .line 80
    iget-object v2, p0, Lp4/rb;->m:Lp4/n4;

    .line 81
    .line 82
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 83
    .line 84
    .line 85
    const/16 v1, 0xe

    .line 86
    .line 87
    iget-object v2, p0, Lp4/rb;->n:Lp4/o5;

    .line 88
    .line 89
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 90
    .line 91
    .line 92
    const/16 v1, 0xf

    .line 93
    .line 94
    iget-object v2, p0, Lp4/rb;->p:Lp4/o6;

    .line 95
    .line 96
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 97
    .line 98
    .line 99
    const/16 p2, 0x10

    .line 100
    .line 101
    iget-object v1, p0, Lp4/rb;->q:[B

    .line 102
    .line 103
    invoke-static {p1, p2, v1}, Ls3/c;->d(Landroid/os/Parcel;I[B)V

    .line 104
    .line 105
    .line 106
    const/16 p2, 0x11

    .line 107
    .line 108
    iget-boolean v1, p0, Lp4/rb;->r:Z

    .line 109
    .line 110
    invoke-static {p1, p2, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 111
    .line 112
    .line 113
    const/16 p2, 0x12

    .line 114
    .line 115
    iget-wide v1, p0, Lp4/rb;->s:D

    .line 116
    .line 117
    invoke-static {p1, p2, v1, v2}, Ls3/c;->f(Landroid/os/Parcel;ID)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

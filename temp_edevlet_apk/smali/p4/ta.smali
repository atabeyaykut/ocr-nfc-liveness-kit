.class public final Lp4/ta;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lp4/ta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:[Landroid/graphics/Point;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:I

.field public final g:Lp4/ma;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Lp4/pa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:Lp4/qa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:Lp4/sa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final l:Lp4/ra;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final m:Lp4/na;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final n:Lp4/ja;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final p:Lp4/ka;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final q:Lp4/la;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp4/ua;

    invoke-direct {v0}, Lp4/ua;-><init>()V

    sput-object v0, Lp4/ta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILp4/ma;Lp4/pa;Lp4/qa;Lp4/sa;Lp4/ra;Lp4/na;Lp4/ja;Lp4/ka;Lp4/la;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [Landroid/graphics/Point;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lp4/ma;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lp4/pa;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lp4/qa;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lp4/sa;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lp4/ra;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lp4/na;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lp4/ja;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lp4/ka;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Lp4/la;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput p1, p0, Lp4/ta;->a:I

    iput-object p2, p0, Lp4/ta;->b:Ljava/lang/String;

    iput-object p3, p0, Lp4/ta;->c:Ljava/lang/String;

    iput-object p4, p0, Lp4/ta;->d:[B

    iput-object p5, p0, Lp4/ta;->e:[Landroid/graphics/Point;

    iput p6, p0, Lp4/ta;->f:I

    iput-object p7, p0, Lp4/ta;->g:Lp4/ma;

    iput-object p8, p0, Lp4/ta;->h:Lp4/pa;

    iput-object p9, p0, Lp4/ta;->j:Lp4/qa;

    iput-object p10, p0, Lp4/ta;->k:Lp4/sa;

    iput-object p11, p0, Lp4/ta;->l:Lp4/ra;

    iput-object p12, p0, Lp4/ta;->m:Lp4/na;

    iput-object p13, p0, Lp4/ta;->n:Lp4/ja;

    iput-object p14, p0, Lp4/ta;->p:Lp4/ka;

    iput-object p15, p0, Lp4/ta;->q:Lp4/la;

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
    const/4 v1, 0x1

    .line 8
    iget v2, p0, Lp4/ta;->a:I

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    iget-object v2, p0, Lp4/ta;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Lp4/ta;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    iget-object v2, p0, Lp4/ta;->d:[B

    .line 27
    .line 28
    invoke-static {p1, v1, v2}, Ls3/c;->d(Landroid/os/Parcel;I[B)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    iget-object v2, p0, Lp4/ta;->e:[Landroid/graphics/Point;

    .line 33
    .line 34
    invoke-static {p1, v1, v2, p2}, Ls3/c;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x6

    .line 38
    iget v2, p0, Lp4/ta;->f:I

    .line 39
    .line 40
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x7

    .line 44
    iget-object v2, p0, Lp4/ta;->g:Lp4/ma;

    .line 45
    .line 46
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    iget-object v2, p0, Lp4/ta;->h:Lp4/pa;

    .line 52
    .line 53
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x9

    .line 57
    .line 58
    iget-object v2, p0, Lp4/ta;->j:Lp4/qa;

    .line 59
    .line 60
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 61
    .line 62
    .line 63
    const/16 v1, 0xa

    .line 64
    .line 65
    iget-object v2, p0, Lp4/ta;->k:Lp4/sa;

    .line 66
    .line 67
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 68
    .line 69
    .line 70
    const/16 v1, 0xb

    .line 71
    .line 72
    iget-object v2, p0, Lp4/ta;->l:Lp4/ra;

    .line 73
    .line 74
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 75
    .line 76
    .line 77
    const/16 v1, 0xc

    .line 78
    .line 79
    iget-object v2, p0, Lp4/ta;->m:Lp4/na;

    .line 80
    .line 81
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 82
    .line 83
    .line 84
    const/16 v1, 0xd

    .line 85
    .line 86
    iget-object v2, p0, Lp4/ta;->n:Lp4/ja;

    .line 87
    .line 88
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 89
    .line 90
    .line 91
    const/16 v1, 0xe

    .line 92
    .line 93
    iget-object v2, p0, Lp4/ta;->p:Lp4/ka;

    .line 94
    .line 95
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 96
    .line 97
    .line 98
    const/16 v1, 0xf

    .line 99
    .line 100
    iget-object v2, p0, Lp4/ta;->q:Lp4/la;

    .line 101
    .line 102
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.class public final Lq4/s;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lq4/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lq4/w;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:[Lq4/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:[Lq4/u;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:[Lq4/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq4/h0;

    invoke-direct {v0}, Lq4/h0;-><init>()V

    sput-object v0, Lq4/s;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lq4/w;Ljava/lang/String;Ljava/lang/String;[Lq4/x;[Lq4/u;[Ljava/lang/String;[Lq4/p;)V
    .locals 0
    .param p1    # Lq4/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Lq4/x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [Lq4/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [Lq4/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput-object p1, p0, Lq4/s;->a:Lq4/w;

    iput-object p2, p0, Lq4/s;->b:Ljava/lang/String;

    iput-object p3, p0, Lq4/s;->c:Ljava/lang/String;

    iput-object p4, p0, Lq4/s;->d:[Lq4/x;

    iput-object p5, p0, Lq4/s;->e:[Lq4/u;

    iput-object p6, p0, Lq4/s;->f:[Ljava/lang/String;

    iput-object p7, p0, Lq4/s;->g:[Lq4/p;

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
    iget-object v2, p0, Lq4/s;->a:Lq4/w;

    .line 9
    .line 10
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    iget-object v2, p0, Lq4/s;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Lq4/s;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    iget-object v2, p0, Lq4/s;->d:[Lq4/x;

    .line 27
    .line 28
    invoke-static {p1, v1, v2, p2}, Ls3/c;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    iget-object v2, p0, Lq4/s;->e:[Lq4/u;

    .line 33
    .line 34
    invoke-static {p1, v1, v2, p2}, Ls3/c;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x6

    .line 38
    iget-object v2, p0, Lq4/s;->f:[Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1, v1, v2}, Ls3/c;->o(Landroid/os/Parcel;I[Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x7

    .line 44
    iget-object v2, p0, Lq4/s;->g:[Lq4/p;

    .line 45
    .line 46
    invoke-static {p1, v1, v2, p2}, Ls3/c;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

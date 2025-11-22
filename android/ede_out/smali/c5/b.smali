.class public final Lc5/b;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc5/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Lc5/r7;

.field public d:J

.field public e:Z

.field public f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Lc5/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:J

.field public j:Lc5/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:J

.field public final l:Lc5/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc5/c;

    invoke-direct {v0}, Lc5/c;-><init>()V

    sput-object v0, Lc5/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lc5/b;)V
    .locals 2

    invoke-direct {p0}, Ls3/a;-><init>()V

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iget-object v0, p1, Lc5/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lc5/b;->a:Ljava/lang/String;

    iget-object v0, p1, Lc5/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lc5/b;->b:Ljava/lang/String;

    iget-object v0, p1, Lc5/b;->c:Lc5/r7;

    iput-object v0, p0, Lc5/b;->c:Lc5/r7;

    iget-wide v0, p1, Lc5/b;->d:J

    iput-wide v0, p0, Lc5/b;->d:J

    iget-boolean v0, p1, Lc5/b;->e:Z

    iput-boolean v0, p0, Lc5/b;->e:Z

    iget-object v0, p1, Lc5/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lc5/b;->f:Ljava/lang/String;

    iget-object v0, p1, Lc5/b;->g:Lc5/s;

    iput-object v0, p0, Lc5/b;->g:Lc5/s;

    iget-wide v0, p1, Lc5/b;->h:J

    iput-wide v0, p0, Lc5/b;->h:J

    iget-object v0, p1, Lc5/b;->j:Lc5/s;

    iput-object v0, p0, Lc5/b;->j:Lc5/s;

    iget-wide v0, p1, Lc5/b;->k:J

    iput-wide v0, p0, Lc5/b;->k:J

    iget-object p1, p1, Lc5/b;->l:Lc5/s;

    iput-object p1, p0, Lc5/b;->l:Lc5/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lc5/r7;JZLjava/lang/String;Lc5/s;JLc5/s;JLc5/s;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lc5/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lc5/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lc5/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput-object p1, p0, Lc5/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lc5/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lc5/b;->c:Lc5/r7;

    iput-wide p4, p0, Lc5/b;->d:J

    iput-boolean p6, p0, Lc5/b;->e:Z

    iput-object p7, p0, Lc5/b;->f:Ljava/lang/String;

    iput-object p8, p0, Lc5/b;->g:Lc5/s;

    iput-wide p9, p0, Lc5/b;->h:J

    iput-object p11, p0, Lc5/b;->j:Lc5/s;

    iput-wide p12, p0, Lc5/b;->k:J

    iput-object p14, p0, Lc5/b;->l:Lc5/s;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

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
    iget-object v2, p0, Lc5/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    iget-object v2, p0, Lc5/b;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    iget-object v2, p0, Lc5/b;->c:Lc5/r7;

    .line 21
    .line 22
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    iget-wide v2, p0, Lc5/b;->d:J

    .line 27
    .line 28
    invoke-static {p1, v1, v2, v3}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    iget-boolean v2, p0, Lc5/b;->e:Z

    .line 33
    .line 34
    invoke-static {p1, v1, v2}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x7

    .line 38
    iget-object v2, p0, Lc5/b;->f:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    iget-object v2, p0, Lc5/b;->g:Lc5/s;

    .line 46
    .line 47
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 48
    .line 49
    .line 50
    const/16 v1, 0x9

    .line 51
    .line 52
    iget-wide v2, p0, Lc5/b;->h:J

    .line 53
    .line 54
    invoke-static {p1, v1, v2, v3}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 55
    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    iget-object v2, p0, Lc5/b;->j:Lc5/s;

    .line 60
    .line 61
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 62
    .line 63
    .line 64
    const/16 v1, 0xb

    .line 65
    .line 66
    iget-wide v2, p0, Lc5/b;->k:J

    .line 67
    .line 68
    invoke-static {p1, v1, v2, v3}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 69
    .line 70
    .line 71
    const/16 v1, 0xc

    .line 72
    .line 73
    iget-object v2, p0, Lc5/b;->l:Lc5/s;

    .line 74
    .line 75
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

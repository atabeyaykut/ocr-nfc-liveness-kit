.class public final Lp4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lp4/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Ls3/b;->u(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    move-wide v9, v2

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v1, v0, :cond_5

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    int-to-char v2, v1

    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v2, v3, :cond_4

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    if-eq v2, v3, :cond_3

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    if-eq v2, v3, :cond_2

    .line 32
    .line 33
    const/4 v3, 0x5

    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    const/4 v3, 0x6

    .line 37
    if-eq v2, v3, :cond_0

    .line 38
    .line 39
    invoke-static {p1, v1}, Ls3/b;->t(Landroid/os/Parcel;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1, v1}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    move v8, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p1, v1}, Ls3/b;->r(Landroid/os/Parcel;I)J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    move-wide v9, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {p1, v1}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    move v7, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-static {p1, v1}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    move v6, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    invoke-static {p1, v1}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    move v5, v1

    .line 72
    goto :goto_0

    .line 73
    :cond_5
    invoke-static {p1, v0}, Ls3/b;->j(Landroid/os/Parcel;I)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lp4/k;

    .line 77
    .line 78
    move-object v4, p1

    .line 79
    invoke-direct/range {v4 .. v10}, Lp4/k;-><init>(IIIIJ)V

    .line 80
    .line 81
    .line 82
    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lp4/k;

    return-object p1
.end method

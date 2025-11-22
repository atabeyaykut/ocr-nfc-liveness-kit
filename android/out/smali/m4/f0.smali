.class public final Lm4/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {p1}, Ls3/b;->u(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lm4/b0;->b:Lm4/z;

    .line 6
    .line 7
    sget-object v1, Lm4/c0;->e:Lm4/c0;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    move-object v11, v1

    .line 12
    move-object v7, v2

    .line 13
    move-object v8, v7

    .line 14
    move-object v9, v8

    .line 15
    move-object v12, v9

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ge v1, v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-char v2, v1

    .line 30
    packed-switch v2, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v1}, Ls3/b;->t(Landroid/os/Parcel;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_0
    sget-object v2, Lm3/d;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    .line 39
    invoke-static {p1, v1, v2}, Ls3/b;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v11

    .line 43
    goto :goto_0

    .line 44
    :pswitch_1
    sget-object v2, Lm4/p;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    .line 46
    invoke-static {p1, v1, v2}, Ls3/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v12, v1

    .line 51
    check-cast v12, Lm4/p;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_2
    invoke-static {p1, v1}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    goto :goto_0

    .line 59
    :pswitch_3
    invoke-static {p1, v1}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    goto :goto_0

    .line 64
    :pswitch_4
    invoke-static {p1, v1}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    goto :goto_0

    .line 69
    :pswitch_5
    invoke-static {p1, v1}, Ls3/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    goto :goto_0

    .line 74
    :pswitch_6
    invoke-static {p1, v1}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    goto :goto_0

    .line 79
    :pswitch_7
    invoke-static {p1, v1}, Ls3/b;->q(Landroid/os/Parcel;I)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-static {p1, v0}, Ls3/b;->j(Landroid/os/Parcel;I)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Lm4/p;

    .line 88
    .line 89
    move-object v4, p1

    .line 90
    invoke-direct/range {v4 .. v12}, Lm4/p;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lm4/p;)V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lm4/p;

    return-object p1
.end method

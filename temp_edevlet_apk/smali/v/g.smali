.class public final Lv/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Z
    .locals 9
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x1010036

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {p0, v2, v0, v2, v1}, Lb0/c;->c(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Lx9/a;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    int-to-double v1, v0

    .line 25
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    int-to-double v3, v3

    .line 30
    const-wide v5, 0x3fd322d0e5604189L    # 0.299

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    mul-double v3, v3, v5

    .line 36
    .line 37
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    int-to-double v5, v5

    .line 42
    const-wide v7, 0x3fe2c8b439581062L    # 0.587

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    mul-double v5, v5, v7

    .line 48
    .line 49
    add-double/2addr v5, v3

    .line 50
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    int-to-double v3, p0

    .line 55
    const-wide v7, 0x3fbd2f1a9fbe76c9L    # 0.114

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    mul-double v3, v3, v7

    .line 61
    .line 62
    add-double/2addr v3, v5

    .line 63
    const/16 p0, 0xff

    .line 64
    .line 65
    int-to-double v5, p0

    .line 66
    div-double/2addr v3, v5

    .line 67
    sub-double/2addr v1, v3

    .line 68
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 69
    .line 70
    cmpl-double p0, v1, v3

    .line 71
    .line 72
    if-ltz p0, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 76
    :goto_1
    return v0
.end method

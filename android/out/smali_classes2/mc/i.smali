.class public Lmc/i;
.super Lmc/h;
.source "SourceFile"


# direct methods
.method public static final t(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    invoke-static {v0}, La6/a;->j(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v4, 0x30

    .line 24
    .line 25
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->h(II)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-gez v4, :cond_3

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    if-ne v1, v4, :cond_1

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_1
    const/16 v5, 0x2d

    .line 36
    .line 37
    if-ne v3, v5, :cond_2

    .line 38
    .line 39
    const/high16 v3, -0x80000000

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/16 v5, 0x2b

    .line 44
    .line 45
    if-ne v3, v5, :cond_6

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 v4, 0x0

    .line 49
    :goto_0
    const v3, -0x7fffffff

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_1
    const v6, -0x38e38e3

    .line 54
    .line 55
    .line 56
    const v7, -0x38e38e3

    .line 57
    .line 58
    .line 59
    :goto_2
    if-ge v4, v1, :cond_8

    .line 60
    .line 61
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    invoke-static {v8, v0}, Ljava/lang/Character;->digit(II)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-gez v8, :cond_4

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    if-ge v2, v7, :cond_5

    .line 73
    .line 74
    if-ne v7, v6, :cond_6

    .line 75
    .line 76
    div-int/lit8 v7, v3, 0xa

    .line 77
    .line 78
    if-ge v2, v7, :cond_5

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    mul-int/lit8 v2, v2, 0xa

    .line 82
    .line 83
    add-int v9, v3, v8

    .line 84
    .line 85
    if-ge v2, v9, :cond_7

    .line 86
    .line 87
    :cond_6
    :goto_3
    const/4 p0, 0x0

    .line 88
    goto :goto_4

    .line 89
    :cond_7
    sub-int/2addr v2, v8

    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_8
    if-eqz v5, :cond_9

    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    goto :goto_4

    .line 100
    :cond_9
    neg-int p0, v2

    .line 101
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    :goto_4
    return-object p0
.end method

.method public static final u(Ljava/lang/String;)Ljava/lang/Long;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-static {v1}, La6/a;->j(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/16 v5, 0x30

    .line 26
    .line 27
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->h(II)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-gez v5, :cond_3

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    if-ne v2, v5, :cond_1

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_1
    const/16 v6, 0x2d

    .line 38
    .line 39
    if-ne v4, v6, :cond_2

    .line 40
    .line 41
    const-wide/high16 v3, -0x8000000000000000L

    .line 42
    .line 43
    move-wide v6, v3

    .line 44
    const/4 v3, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/16 v6, 0x2b

    .line 47
    .line 48
    if-ne v4, v6, :cond_6

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 v5, 0x0

    .line 52
    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :goto_1
    const-wide v8, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const-wide/16 v10, 0x0

    .line 63
    .line 64
    move-wide v12, v8

    .line 65
    :goto_2
    if-ge v5, v2, :cond_8

    .line 66
    .line 67
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-static {v4, v1}, Ljava/lang/Character;->digit(II)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-gez v4, :cond_4

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    cmp-long v14, v10, v12

    .line 79
    .line 80
    if-gez v14, :cond_5

    .line 81
    .line 82
    cmp-long v14, v12, v8

    .line 83
    .line 84
    if-nez v14, :cond_6

    .line 85
    .line 86
    int-to-long v12, v1

    .line 87
    div-long v12, v6, v12

    .line 88
    .line 89
    cmp-long v14, v10, v12

    .line 90
    .line 91
    if-gez v14, :cond_5

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    int-to-long v14, v1

    .line 95
    mul-long v10, v10, v14

    .line 96
    .line 97
    int-to-long v14, v4

    .line 98
    add-long v16, v6, v14

    .line 99
    .line 100
    cmp-long v4, v10, v16

    .line 101
    .line 102
    if-gez v4, :cond_7

    .line 103
    .line 104
    :cond_6
    :goto_3
    const/4 v0, 0x0

    .line 105
    goto :goto_4

    .line 106
    :cond_7
    sub-long/2addr v10, v14

    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_8
    if-eqz v3, :cond_9

    .line 111
    .line 112
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    goto :goto_4

    .line 117
    :cond_9
    neg-long v0, v10

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :goto_4
    return-object v0
.end method

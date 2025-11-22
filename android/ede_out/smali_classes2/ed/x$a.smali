.class public final Led/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Led/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(JLed/e;ILjava/util/ArrayList;IILjava/util/ArrayList;)V
    .locals 18

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v10, p4

    move/from16 v2, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    if-ge v2, v11, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v6, "Failed requirement."

    if-eqz v5, :cond_1b

    if-ge v2, v11, :cond_4

    move v5, v2

    :goto_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Led/h;

    .line 1
    invoke-virtual {v5}, Led/h;->r()I

    move-result v5

    if-lt v5, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    if-lt v7, v11, :cond_2

    goto :goto_3

    :cond_2
    move v5, v7

    goto :goto_1

    .line 2
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    invoke-virtual/range {p4 .. p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Led/h;

    add-int/lit8 v6, v11, -0x1

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Led/h;

    .line 3
    invoke-virtual {v5}, Led/h;->r()I

    move-result v7

    if-ne v1, v7, :cond_5

    .line 4
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Led/h;

    move-object/from16 v17, v7

    move v7, v2

    move v2, v5

    move-object/from16 v5, v17

    goto :goto_4

    :cond_5
    move v7, v2

    const/4 v2, -0x1

    .line 5
    :goto_4
    invoke-virtual {v5, v1}, Led/h;->x(I)B

    move-result v8

    invoke-virtual {v6, v1}, Led/h;->x(I)B

    move-result v9

    const/4 v14, 0x2

    const/4 v15, 0x4

    if-eq v8, v9, :cond_12

    add-int/lit8 v3, v7, 0x1

    const/4 v4, 0x1

    if-ge v3, v11, :cond_8

    :goto_5
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, -0x1

    .line 6
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Led/h;

    .line 7
    invoke-virtual {v6, v1}, Led/h;->x(I)B

    move-result v6

    .line 8
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Led/h;

    .line 9
    invoke-virtual {v3, v1}, Led/h;->x(I)B

    move-result v3

    if-eq v6, v3, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_6
    if-lt v5, v11, :cond_7

    goto :goto_6

    :cond_7
    move v3, v5

    goto :goto_5

    .line 10
    :cond_8
    :goto_6
    iget-wide v5, v0, Led/e;->b:J

    int-to-long v8, v15

    .line 11
    div-long/2addr v5, v8

    add-long v5, v5, p0

    int-to-long v14, v14

    add-long/2addr v5, v14

    mul-int/lit8 v3, v4, 0x2

    int-to-long v14, v3

    add-long/2addr v14, v5

    .line 12
    invoke-virtual {v0, v4}, Led/e;->c0(I)V

    invoke-virtual {v0, v2}, Led/e;->c0(I)V

    if-ge v7, v11, :cond_c

    move v2, v7

    :goto_7
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Led/h;

    .line 13
    invoke-virtual {v4, v1}, Led/h;->x(I)B

    move-result v4

    if-eq v2, v7, :cond_9

    add-int/lit8 v2, v2, -0x1

    .line 14
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Led/h;

    .line 15
    invoke-virtual {v2, v1}, Led/h;->x(I)B

    move-result v2

    if-eq v4, v2, :cond_a

    :cond_9
    and-int/lit16 v2, v4, 0xff

    .line 16
    invoke-virtual {v0, v2}, Led/e;->c0(I)V

    :cond_a
    if-lt v3, v11, :cond_b

    goto :goto_8

    :cond_b
    move v2, v3

    goto :goto_7

    :cond_c
    :goto_8
    new-instance v6, Led/e;

    invoke-direct {v6}, Led/e;-><init>()V

    :goto_9
    if-ge v7, v11, :cond_11

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Led/h;

    .line 17
    invoke-virtual {v2, v1}, Led/h;->x(I)B

    move-result v2

    add-int/lit8 v3, v7, 0x1

    if-ge v3, v11, :cond_f

    move v4, v3

    :goto_a
    add-int/lit8 v5, v4, 0x1

    .line 18
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Led/h;

    .line 19
    invoke-virtual {v13, v1}, Led/h;->x(I)B

    move-result v13

    if-eq v2, v13, :cond_d

    move v13, v4

    goto :goto_c

    :cond_d
    if-lt v5, v11, :cond_e

    goto :goto_b

    :cond_e
    move v4, v5

    goto :goto_a

    :cond_f
    :goto_b
    move v13, v11

    :goto_c
    if-ne v3, v13, :cond_10

    add-int/lit8 v2, v1, 0x1

    .line 20
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Led/h;

    .line 21
    invoke-virtual {v3}, Led/h;->r()I

    move-result v3

    if-ne v2, v3, :cond_10

    .line 22
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Led/e;->c0(I)V

    move-wide/from16 p0, v14

    move-object v14, v6

    move-wide v15, v8

    goto :goto_d

    .line 23
    :cond_10
    iget-wide v2, v6, Led/e;->b:J

    .line 24
    div-long/2addr v2, v8

    add-long/2addr v2, v14

    long-to-int v3, v2

    const/4 v2, -0x1

    mul-int/lit8 v3, v3, -0x1

    .line 25
    invoke-virtual {v0, v3}, Led/e;->c0(I)V

    add-int/lit8 v5, v1, 0x1

    move-wide v2, v14

    move-object v4, v6

    move-wide/from16 p0, v14

    move-object v14, v6

    move-object/from16 v6, p4

    move-wide v15, v8

    move v8, v13

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Led/x$a;->a(JLed/e;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    :goto_d
    move v7, v13

    move-object v6, v14

    move-wide v8, v15

    move-wide/from16 v14, p0

    goto :goto_9

    :cond_11
    move-object v14, v6

    invoke-virtual {v0, v14}, Led/e;->J(Led/j0;)V

    goto/16 :goto_13

    .line 26
    :cond_12
    invoke-virtual {v5}, Led/h;->r()I

    move-result v8

    invoke-virtual {v6}, Led/h;->r()I

    move-result v9

    .line 27
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v1, v8, :cond_14

    move v9, v1

    const/4 v13, 0x0

    :goto_e
    add-int/lit8 v3, v9, 0x1

    .line 28
    invoke-virtual {v5, v9}, Led/h;->x(I)B

    move-result v4

    invoke-virtual {v6, v9}, Led/h;->x(I)B

    move-result v9

    if-ne v4, v9, :cond_15

    add-int/lit8 v13, v13, 0x1

    if-lt v3, v8, :cond_13

    goto :goto_f

    :cond_13
    move v9, v3

    goto :goto_e

    :cond_14
    const/4 v13, 0x0

    .line 29
    :cond_15
    :goto_f
    iget-wide v3, v0, Led/e;->b:J

    int-to-long v8, v15

    .line 30
    div-long/2addr v3, v8

    add-long v3, v3, p0

    int-to-long v14, v14

    add-long/2addr v3, v14

    int-to-long v14, v13

    add-long/2addr v3, v14

    const-wide/16 v14, 0x1

    add-long/2addr v3, v14

    neg-int v6, v13

    .line 31
    invoke-virtual {v0, v6}, Led/e;->c0(I)V

    invoke-virtual {v0, v2}, Led/e;->c0(I)V

    add-int v6, v1, v13

    if-ge v1, v6, :cond_17

    :goto_10
    add-int/lit8 v2, v1, 0x1

    .line 32
    invoke-virtual {v5, v1}, Led/h;->x(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 33
    invoke-virtual {v0, v1}, Led/e;->c0(I)V

    if-lt v2, v6, :cond_16

    goto :goto_11

    :cond_16
    move v1, v2

    goto :goto_10

    :cond_17
    :goto_11
    add-int/lit8 v1, v7, 0x1

    if-ne v1, v11, :cond_1a

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Led/h;

    .line 34
    invoke-virtual {v1}, Led/h;->r()I

    move-result v1

    if-ne v6, v1, :cond_18

    const/4 v3, 0x1

    goto :goto_12

    :cond_18
    const/4 v3, 0x0

    :goto_12
    if-eqz v3, :cond_19

    .line 35
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Led/e;->c0(I)V

    goto :goto_13

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v13, Led/e;

    invoke-direct {v13}, Led/e;-><init>()V

    .line 36
    iget-wide v1, v13, Led/e;->b:J

    .line 37
    div-long/2addr v1, v8

    add-long/2addr v1, v3

    long-to-int v2, v1

    const/4 v1, -0x1

    mul-int/lit8 v2, v2, -0x1

    .line 38
    invoke-virtual {v0, v2}, Led/e;->c0(I)V

    move-wide v1, v3

    move-object v3, v13

    move v4, v6

    move-object/from16 v5, p4

    move v6, v7

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Led/x$a;->a(JLed/e;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    invoke-virtual {v0, v13}, Led/e;->J(Led/j0;)V

    :goto_13
    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs b([Led/h;)Led/x;
    .locals 13

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance p0, Led/x;

    .line 12
    .line 13
    new-array v0, v2, [Led/h;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [I

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, v1}, Led/x;-><init>([Led/h;[I)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-static {p0}, Lm9/k;->B0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-le v0, v1, :cond_2

    .line 34
    .line 35
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    array-length v3, p0

    .line 41
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    array-length v3, p0

    .line 45
    const/4 v4, 0x0

    .line 46
    :goto_1
    if-ge v4, v3, :cond_3

    .line 47
    .line 48
    aget-object v5, p0, v4

    .line 49
    .line 50
    const/4 v5, -0x1

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    new-array v3, v2, [Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_13

    .line 68
    .line 69
    check-cast v0, [Ljava/lang/Integer;

    .line 70
    .line 71
    array-length v3, v0

    .line 72
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Lb8/f;->Y([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    array-length v0, p0

    .line 81
    const/4 v3, 0x0

    .line 82
    const/4 v4, 0x0

    .line 83
    :goto_2
    if-ge v3, v0, :cond_9

    .line 84
    .line 85
    aget-object v5, p0, v3

    .line 86
    .line 87
    add-int/lit8 v6, v4, 0x1

    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    const-string v11, ")."

    .line 98
    .line 99
    if-ltz v8, :cond_8

    .line 100
    .line 101
    if-gt v8, v9, :cond_7

    .line 102
    .line 103
    add-int/lit8 v8, v8, -0x1

    .line 104
    .line 105
    const/4 v9, 0x0

    .line 106
    :goto_3
    if-gt v9, v8, :cond_5

    .line 107
    .line 108
    add-int v11, v9, v8

    .line 109
    .line 110
    ushr-int/2addr v11, v1

    .line 111
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    check-cast v12, Ljava/lang/Comparable;

    .line 116
    .line 117
    invoke-static {v12, v5}, Lb8/f;->q(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    if-gez v12, :cond_4

    .line 122
    .line 123
    add-int/lit8 v9, v11, 0x1

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    if-lez v12, :cond_6

    .line 127
    .line 128
    add-int/lit8 v8, v11, -0x1

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 132
    .line 133
    neg-int v11, v9

    .line 134
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-interface {v10, v11, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    move v4, v6

    .line 144
    goto :goto_2

    .line 145
    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 146
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v1, "toIndex ("

    .line 150
    .line 151
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, ") is greater than size ("

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p0

    .line 176
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    const-string v0, "fromIndex (0) is greater than toIndex ("

    .line 179
    .line 180
    invoke-static {v0, v8, v11}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0

    .line 188
    :cond_9
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Led/h;

    .line 193
    .line 194
    invoke-virtual {v0}, Led/h;->r()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-lez v0, :cond_a

    .line 199
    .line 200
    const/4 v0, 0x1

    .line 201
    goto :goto_4

    .line 202
    :cond_a
    const/4 v0, 0x0

    .line 203
    :goto_4
    if-eqz v0, :cond_12

    .line 204
    .line 205
    const/4 v0, 0x0

    .line 206
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-ge v0, v1, :cond_10

    .line 211
    .line 212
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Led/h;

    .line 217
    .line 218
    add-int/lit8 v3, v0, 0x1

    .line 219
    .line 220
    move v4, v3

    .line 221
    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    if-ge v4, v5, :cond_f

    .line 226
    .line 227
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Led/h;

    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    const-string v6, "prefix"

    .line 237
    .line 238
    invoke-static {v1, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Led/h;->r()I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    invoke-virtual {v5, v2, v1, v6}, Led/h;->B(ILed/h;I)Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-nez v6, :cond_b

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_b
    invoke-virtual {v5}, Led/h;->r()I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    invoke-virtual {v1}, Led/h;->r()I

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    if-eq v6, v8, :cond_c

    .line 261
    .line 262
    const/4 v6, 0x1

    .line 263
    goto :goto_7

    .line 264
    :cond_c
    const/4 v6, 0x0

    .line 265
    :goto_7
    if-eqz v6, :cond_e

    .line 266
    .line 267
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    check-cast v5, Ljava/lang/Number;

    .line 272
    .line 273
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    check-cast v6, Ljava/lang/Number;

    .line 282
    .line 283
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    if-le v5, v6, :cond_d

    .line 288
    .line 289
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_e
    const-string p0, "duplicate option: "

    .line 300
    .line 301
    invoke-static {v5, p0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 306
    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw v0

    .line 315
    :cond_f
    :goto_8
    move v0, v3

    .line 316
    goto :goto_5

    .line 317
    :cond_10
    new-instance v0, Led/e;

    .line 318
    .line 319
    invoke-direct {v0}, Led/e;-><init>()V

    .line 320
    .line 321
    .line 322
    const-wide/16 v3, 0x0

    .line 323
    .line 324
    const/4 v6, 0x0

    .line 325
    const/4 v8, 0x0

    .line 326
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 327
    .line 328
    .line 329
    move-result v9

    .line 330
    move-object v5, v0

    .line 331
    invoke-static/range {v3 .. v10}, Led/x$a;->a(JLed/e;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 332
    .line 333
    .line 334
    iget-wide v3, v0, Led/e;->b:J

    .line 335
    .line 336
    const/4 v1, 0x4

    .line 337
    int-to-long v5, v1

    .line 338
    div-long/2addr v3, v5

    .line 339
    long-to-int v1, v3

    .line 340
    new-array v1, v1, [I

    .line 341
    .line 342
    :goto_9
    invoke-virtual {v0}, Led/e;->I()Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-nez v3, :cond_11

    .line 347
    .line 348
    add-int/lit8 v3, v2, 0x1

    .line 349
    .line 350
    invoke-virtual {v0}, Led/e;->readInt()I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    aput v4, v1, v2

    .line 355
    .line 356
    move v2, v3

    .line 357
    goto :goto_9

    .line 358
    :cond_11
    new-instance v0, Led/x;

    .line 359
    .line 360
    array-length v2, p0

    .line 361
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    const-string v2, "java.util.Arrays.copyOf(this, size)"

    .line 366
    .line 367
    invoke-static {p0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    check-cast p0, [Led/h;

    .line 371
    .line 372
    invoke-direct {v0, p0, v1}, Led/x;-><init>([Led/h;[I)V

    .line 373
    .line 374
    .line 375
    return-object v0

    .line 376
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 377
    .line 378
    const-string v0, "the empty byte string is not a supported option"

    .line 379
    .line 380
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw p0

    .line 388
    :cond_13
    new-instance p0, Ljava/lang/NullPointerException;

    .line 389
    .line 390
    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    .line 391
    .line 392
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw p0

    .line 396
    nop

    .line 397
    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method

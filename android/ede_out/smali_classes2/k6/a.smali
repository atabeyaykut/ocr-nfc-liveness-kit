.class public final Lk6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk6/a$a;
    }
.end annotation


# static fields
.field public static final a:Lv6/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv6/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lv6/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lj6/a;->a:Lj6/a;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lj6/a;->a(Lu6/a;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lv6/e;->d:Z

    .line 13
    .line 14
    new-instance v1, Lv6/d;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lv6/d;-><init>(Lv6/e;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lk6/a;->a:Lv6/d;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/util/JsonReader;)Lj6/r;
    .locals 4

    .line 1
    new-instance v0, Lj6/r$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lj6/r$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_6

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, -0x1

    .line 27
    sparse-switch v2, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :sswitch_0
    const-string v2, "importance"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v3, 0x4

    .line 41
    goto :goto_1

    .line 42
    :sswitch_1
    const-string v2, "file"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v3, 0x3

    .line 52
    goto :goto_1

    .line 53
    :sswitch_2
    const-string v2, "pc"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 v3, 0x2

    .line 63
    goto :goto_1

    .line 64
    :sswitch_3
    const-string v2, "symbol"

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const/4 v3, 0x1

    .line 74
    goto :goto_1

    .line 75
    :sswitch_4
    const-string v2, "offset"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const/4 v3, 0x0

    .line 85
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, v0, Lj6/r$a;->e:Ljava/lang/Integer;

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, v0, Lj6/r$a;->c:Ljava/lang/String;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 111
    .line 112
    .line 113
    move-result-wide v1

    .line 114
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iput-object v1, v0, Lj6/r$a;->a:Ljava/lang/Long;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-eqz v1, :cond_5

    .line 126
    .line 127
    iput-object v1, v0, Lj6/r$a;->b:Ljava/lang/String;

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 131
    .line 132
    const-string v0, "Null symbol"

    .line 133
    .line 134
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput-object v1, v0, Lj6/r$a;->d:Ljava/lang/Long;

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lj6/r$a;->a()Lj6/r;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    nop

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x3cc89b6d -> :sswitch_4
        -0x34e68a68 -> :sswitch_3
        0xdf3 -> :sswitch_2
        0x2ff57c -> :sswitch_1
        0x7eb2da74 -> :sswitch_0
    .end sparse-switch

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/util/JsonReader;)Lj6/d;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move-object v1, v0

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v3, "key"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    const-string v3, "value"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 47
    .line 48
    const-string v0, "Null value"

    .line 49
    .line 50
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 62
    .line 63
    const-string v0, "Null key"

    .line 64
    .line 65
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 70
    .line 71
    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    const-string p0, " key"

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    const-string p0, ""

    .line 78
    .line 79
    :goto_1
    if-nez v1, :cond_6

    .line 80
    .line 81
    const-string v2, " value"

    .line 82
    .line 83
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_7

    .line 92
    .line 93
    new-instance p0, Lj6/d;

    .line 94
    .line 95
    invoke-direct {p0, v0, v1}, Lj6/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    const-string v1, "Missing required properties:"

    .line 102
    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0
.end method

.method public static c(Landroid/util/JsonReader;Lk6/a$a;)Lj6/b0;
    .locals 2
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lk6/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lk6/a$a<",
            "TT;>;)",
            "Lj6/b0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, p0}, Lk6/a$a;->b(Landroid/util/JsonReader;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 24
    .line 25
    .line 26
    new-instance p0, Lj6/b0;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lj6/b0;-><init>(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public static d(Landroid/util/JsonReader;)Lj6/k;
    .locals 23
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lj6/k$a;

    .line 4
    .line 5
    invoke-direct {v1}, Lj6/k$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_55

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x3

    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x1

    .line 31
    const/4 v7, 0x2

    .line 32
    const-string v8, "timestamp"

    .line 33
    .line 34
    sparse-switch v3, :sswitch_data_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :sswitch_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const/4 v2, 0x4

    .line 46
    goto :goto_2

    .line 47
    :sswitch_1
    const-string v3, "type"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v2, 0x3

    .line 57
    goto :goto_2

    .line 58
    :sswitch_2
    const-string v3, "log"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 v2, 0x2

    .line 68
    goto :goto_2

    .line 69
    :sswitch_3
    const-string v3, "app"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v2, 0x1

    .line 79
    goto :goto_2

    .line 80
    :sswitch_4
    const-string v3, "device"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_4

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    const/4 v2, 0x0

    .line 90
    goto :goto_2

    .line 91
    :goto_1
    const/4 v2, -0x1

    .line 92
    :goto_2
    if-eqz v2, :cond_47

    .line 93
    .line 94
    const-string v3, "Missing required properties:"

    .line 95
    .line 96
    const-string v9, ""

    .line 97
    .line 98
    if-eq v2, v6, :cond_e

    .line 99
    .line 100
    if-eq v2, v7, :cond_8

    .line 101
    .line 102
    if-eq v2, v4, :cond_6

    .line 103
    .line 104
    if-eq v2, v5, :cond_5

    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iput-object v2, v1, Lj6/k$a;->a:Ljava/lang/Long;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-eqz v2, :cond_7

    .line 126
    .line 127
    iput-object v2, v1, Lj6/k$a;->b:Ljava/lang/String;

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    .line 131
    .line 132
    const-string v1, "Null type"

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 139
    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_b

    .line 147
    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    const-string v5, "content"

    .line 156
    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-nez v4, :cond_9

    .line 162
    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    if-eqz v2, :cond_a

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 175
    .line 176
    const-string v1, "Null content"

    .line 177
    .line 178
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 183
    .line 184
    .line 185
    if-nez v2, :cond_c

    .line 186
    .line 187
    const-string v9, " content"

    .line 188
    .line 189
    :cond_c
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_d

    .line 194
    .line 195
    new-instance v3, Lj6/t;

    .line 196
    .line 197
    invoke-direct {v3, v2}, Lj6/t;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iput-object v3, v1, Lj6/k$a;->e:Lj6/a0$e$d$d;

    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 215
    .line 216
    .line 217
    const/4 v2, 0x0

    .line 218
    const/4 v10, 0x0

    .line 219
    const/4 v11, 0x0

    .line 220
    const/4 v12, 0x0

    .line 221
    const/4 v13, 0x0

    .line 222
    move-object v14, v13

    .line 223
    move-object v13, v12

    .line 224
    move-object v12, v11

    .line 225
    move-object v11, v10

    .line 226
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    if-eqz v10, :cond_43

    .line 231
    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v10

    .line 236
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 240
    .line 241
    .line 242
    move-result v15

    .line 243
    sparse-switch v15, :sswitch_data_1

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :sswitch_5
    const-string v15, "uiOrientation"

    .line 248
    .line 249
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    if-nez v10, :cond_f

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_f
    const/4 v10, 0x4

    .line 257
    goto :goto_6

    .line 258
    :sswitch_6
    const-string v15, "customAttributes"

    .line 259
    .line 260
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v10

    .line 264
    if-nez v10, :cond_10

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_10
    const/4 v10, 0x3

    .line 268
    goto :goto_6

    .line 269
    :sswitch_7
    const-string v15, "internalKeys"

    .line 270
    .line 271
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    if-nez v10, :cond_11

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_11
    const/4 v10, 0x2

    .line 279
    goto :goto_6

    .line 280
    :sswitch_8
    const-string v15, "execution"

    .line 281
    .line 282
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v10

    .line 286
    if-nez v10, :cond_12

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_12
    const/4 v10, 0x1

    .line 290
    goto :goto_6

    .line 291
    :sswitch_9
    const-string v15, "background"

    .line 292
    .line 293
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    if-nez v10, :cond_13

    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_13
    const/4 v10, 0x0

    .line 301
    goto :goto_6

    .line 302
    :goto_5
    const/4 v10, -0x1

    .line 303
    :goto_6
    if-eqz v10, :cond_42

    .line 304
    .line 305
    if-eq v10, v6, :cond_19

    .line 306
    .line 307
    if-eq v10, v7, :cond_17

    .line 308
    .line 309
    if-eq v10, v4, :cond_15

    .line 310
    .line 311
    if-eq v10, v5, :cond_14

    .line 312
    .line 313
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 314
    .line 315
    .line 316
    goto :goto_4

    .line 317
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    goto :goto_4

    .line 326
    :cond_15
    new-instance v10, Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 332
    .line 333
    .line 334
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 335
    .line 336
    .line 337
    move-result v12

    .line 338
    if-eqz v12, :cond_16

    .line 339
    .line 340
    invoke-static/range {p0 .. p0}, Lk6/a;->b(Landroid/util/JsonReader;)Lj6/d;

    .line 341
    .line 342
    .line 343
    move-result-object v12

    .line 344
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 349
    .line 350
    .line 351
    new-instance v12, Lj6/b0;

    .line 352
    .line 353
    invoke-direct {v12, v10}, Lj6/b0;-><init>(Ljava/util/List;)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_4

    .line 357
    .line 358
    :cond_17
    new-instance v10, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .line 362
    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 364
    .line 365
    .line 366
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 367
    .line 368
    .line 369
    move-result v13

    .line 370
    if-eqz v13, :cond_18

    .line 371
    .line 372
    invoke-static/range {p0 .. p0}, Lk6/a;->b(Landroid/util/JsonReader;)Lj6/d;

    .line 373
    .line 374
    .line 375
    move-result-object v13

    .line 376
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    goto :goto_8

    .line 380
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 381
    .line 382
    .line 383
    new-instance v13, Lj6/b0;

    .line 384
    .line 385
    invoke-direct {v13, v10}, Lj6/b0;-><init>(Ljava/util/List;)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_4

    .line 389
    .line 390
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 391
    .line 392
    .line 393
    const/4 v10, 0x0

    .line 394
    const/4 v11, 0x0

    .line 395
    const/4 v15, 0x0

    .line 396
    const/16 v16, 0x0

    .line 397
    .line 398
    const/16 v17, 0x0

    .line 399
    .line 400
    move-object/from16 v18, v15

    .line 401
    .line 402
    move-object/from16 v19, v16

    .line 403
    .line 404
    move-object/from16 v20, v17

    .line 405
    .line 406
    move-object/from16 v16, v10

    .line 407
    .line 408
    move-object/from16 v17, v11

    .line 409
    .line 410
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 411
    .line 412
    .line 413
    move-result v10

    .line 414
    if-eqz v10, :cond_3e

    .line 415
    .line 416
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 424
    .line 425
    .line 426
    move-result v11

    .line 427
    sparse-switch v11, :sswitch_data_2

    .line 428
    .line 429
    .line 430
    goto :goto_a

    .line 431
    :sswitch_a
    const-string v11, "exception"

    .line 432
    .line 433
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v10

    .line 437
    if-nez v10, :cond_1a

    .line 438
    .line 439
    goto :goto_a

    .line 440
    :cond_1a
    const/4 v10, 0x4

    .line 441
    goto :goto_b

    .line 442
    :sswitch_b
    const-string v11, "binaries"

    .line 443
    .line 444
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v10

    .line 448
    if-nez v10, :cond_1b

    .line 449
    .line 450
    goto :goto_a

    .line 451
    :cond_1b
    const/4 v10, 0x3

    .line 452
    goto :goto_b

    .line 453
    :sswitch_c
    const-string v11, "signal"

    .line 454
    .line 455
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v10

    .line 459
    if-nez v10, :cond_1c

    .line 460
    .line 461
    goto :goto_a

    .line 462
    :cond_1c
    const/4 v10, 0x2

    .line 463
    goto :goto_b

    .line 464
    :sswitch_d
    const-string v11, "threads"

    .line 465
    .line 466
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v10

    .line 470
    if-nez v10, :cond_1d

    .line 471
    .line 472
    goto :goto_a

    .line 473
    :cond_1d
    const/4 v10, 0x1

    .line 474
    goto :goto_b

    .line 475
    :sswitch_e
    const-string v11, "appExitInfo"

    .line 476
    .line 477
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v10

    .line 481
    if-nez v10, :cond_1e

    .line 482
    .line 483
    goto :goto_a

    .line 484
    :cond_1e
    const/4 v10, 0x0

    .line 485
    goto :goto_b

    .line 486
    :goto_a
    const/4 v10, -0x1

    .line 487
    :goto_b
    if-eqz v10, :cond_33

    .line 488
    .line 489
    if-eq v10, v6, :cond_32

    .line 490
    .line 491
    if-eq v10, v7, :cond_21

    .line 492
    .line 493
    if-eq v10, v4, :cond_20

    .line 494
    .line 495
    if-eq v10, v5, :cond_1f

    .line 496
    .line 497
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 498
    .line 499
    .line 500
    goto :goto_9

    .line 501
    :cond_1f
    invoke-static/range {p0 .. p0}, Lk6/a;->e(Landroid/util/JsonReader;)Lj6/o;

    .line 502
    .line 503
    .line 504
    move-result-object v17

    .line 505
    goto :goto_9

    .line 506
    :cond_20
    new-instance v10, Landroidx/camera/core/impl/utils/f;

    .line 507
    .line 508
    invoke-direct {v10}, Landroidx/camera/core/impl/utils/f;-><init>()V

    .line 509
    .line 510
    .line 511
    invoke-static {v0, v10}, Lk6/a;->c(Landroid/util/JsonReader;Lk6/a$a;)Lj6/b0;

    .line 512
    .line 513
    .line 514
    move-result-object v20

    .line 515
    goto :goto_9

    .line 516
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 517
    .line 518
    .line 519
    const/4 v5, 0x0

    .line 520
    const/4 v10, 0x0

    .line 521
    const/4 v11, 0x0

    .line 522
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 523
    .line 524
    .line 525
    move-result v15

    .line 526
    if-eqz v15, :cond_2d

    .line 527
    .line 528
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v15

    .line 532
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    const v7, -0x4468640c

    .line 540
    .line 541
    .line 542
    if-eq v4, v7, :cond_26

    .line 543
    .line 544
    const v7, 0x2eaded

    .line 545
    .line 546
    .line 547
    if-eq v4, v7, :cond_24

    .line 548
    .line 549
    const v7, 0x337a8b

    .line 550
    .line 551
    .line 552
    if-eq v4, v7, :cond_22

    .line 553
    .line 554
    goto :goto_d

    .line 555
    :cond_22
    const-string v4, "name"

    .line 556
    .line 557
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    if-nez v4, :cond_23

    .line 562
    .line 563
    goto :goto_d

    .line 564
    :cond_23
    const/4 v4, 0x2

    .line 565
    goto :goto_e

    .line 566
    :cond_24
    const-string v4, "code"

    .line 567
    .line 568
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v4

    .line 572
    if-nez v4, :cond_25

    .line 573
    .line 574
    goto :goto_d

    .line 575
    :cond_25
    const/4 v4, 0x1

    .line 576
    goto :goto_e

    .line 577
    :cond_26
    const-string v4, "address"

    .line 578
    .line 579
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    if-nez v4, :cond_27

    .line 584
    .line 585
    :goto_d
    const/4 v4, -0x1

    .line 586
    goto :goto_e

    .line 587
    :cond_27
    const/4 v4, 0x0

    .line 588
    :goto_e
    if-eqz v4, :cond_2c

    .line 589
    .line 590
    if-eq v4, v6, :cond_2a

    .line 591
    .line 592
    const/4 v7, 0x2

    .line 593
    if-eq v4, v7, :cond_28

    .line 594
    .line 595
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 596
    .line 597
    .line 598
    goto :goto_f

    .line 599
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    if-eqz v4, :cond_29

    .line 604
    .line 605
    move-object v5, v4

    .line 606
    goto :goto_f

    .line 607
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    .line 608
    .line 609
    const-string v1, "Null name"

    .line 610
    .line 611
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    throw v0

    .line 615
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v4

    .line 619
    if-eqz v4, :cond_2b

    .line 620
    .line 621
    move-object v10, v4

    .line 622
    goto :goto_f

    .line 623
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    .line 624
    .line 625
    const-string v1, "Null code"

    .line 626
    .line 627
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    throw v0

    .line 631
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    .line 632
    .line 633
    .line 634
    move-result-wide v21

    .line 635
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 636
    .line 637
    .line 638
    move-result-object v4

    .line 639
    move-object v11, v4

    .line 640
    :goto_f
    const/4 v4, 0x3

    .line 641
    const/4 v7, 0x2

    .line 642
    goto :goto_c

    .line 643
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 644
    .line 645
    .line 646
    if-nez v5, :cond_2e

    .line 647
    .line 648
    const-string v4, " name"

    .line 649
    .line 650
    goto :goto_10

    .line 651
    :cond_2e
    move-object v4, v9

    .line 652
    :goto_10
    if-nez v10, :cond_2f

    .line 653
    .line 654
    const-string v7, " code"

    .line 655
    .line 656
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    :cond_2f
    if-nez v11, :cond_30

    .line 661
    .line 662
    const-string v7, " address"

    .line 663
    .line 664
    invoke-static {v4, v7}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v4

    .line 668
    :cond_30
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 669
    .line 670
    .line 671
    move-result v7

    .line 672
    if-eqz v7, :cond_31

    .line 673
    .line 674
    new-instance v4, Lj6/p;

    .line 675
    .line 676
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 677
    .line 678
    .line 679
    move-result-wide v6

    .line 680
    invoke-direct {v4, v5, v10, v6, v7}, Lj6/p;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 681
    .line 682
    .line 683
    move-object/from16 v19, v4

    .line 684
    .line 685
    goto/16 :goto_14

    .line 686
    .line 687
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 688
    .line 689
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    throw v0

    .line 697
    :cond_32
    new-instance v4, Lab/b;

    .line 698
    .line 699
    invoke-direct {v4}, Lab/b;-><init>()V

    .line 700
    .line 701
    .line 702
    invoke-static {v0, v4}, Lk6/a;->c(Landroid/util/JsonReader;Lk6/a$a;)Lj6/b0;

    .line 703
    .line 704
    .line 705
    move-result-object v4

    .line 706
    move-object/from16 v16, v4

    .line 707
    .line 708
    goto/16 :goto_14

    .line 709
    .line 710
    :cond_33
    new-instance v4, Lj6/c$a;

    .line 711
    .line 712
    invoke-direct {v4}, Lj6/c$a;-><init>()V

    .line 713
    .line 714
    .line 715
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 716
    .line 717
    .line 718
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 719
    .line 720
    .line 721
    move-result v5

    .line 722
    if-eqz v5, :cond_3d

    .line 723
    .line 724
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v5

    .line 728
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 732
    .line 733
    .line 734
    move-result v6

    .line 735
    sparse-switch v6, :sswitch_data_3

    .line 736
    .line 737
    .line 738
    goto/16 :goto_12

    .line 739
    .line 740
    :sswitch_f
    const-string v6, "importance"

    .line 741
    .line 742
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    move-result v5

    .line 746
    if-nez v5, :cond_34

    .line 747
    .line 748
    goto :goto_12

    .line 749
    :cond_34
    const/4 v5, 0x7

    .line 750
    goto :goto_13

    .line 751
    :sswitch_10
    const-string v6, "traceFile"

    .line 752
    .line 753
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 754
    .line 755
    .line 756
    move-result v5

    .line 757
    if-nez v5, :cond_35

    .line 758
    .line 759
    goto :goto_12

    .line 760
    :cond_35
    const/4 v5, 0x6

    .line 761
    goto :goto_13

    .line 762
    :sswitch_11
    const-string v6, "reasonCode"

    .line 763
    .line 764
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v5

    .line 768
    if-nez v5, :cond_36

    .line 769
    .line 770
    goto :goto_12

    .line 771
    :cond_36
    const/4 v5, 0x5

    .line 772
    goto :goto_13

    .line 773
    :sswitch_12
    const-string v6, "processName"

    .line 774
    .line 775
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    move-result v5

    .line 779
    if-nez v5, :cond_37

    .line 780
    .line 781
    goto :goto_12

    .line 782
    :cond_37
    const/4 v5, 0x4

    .line 783
    goto :goto_13

    .line 784
    :sswitch_13
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    move-result v5

    .line 788
    if-nez v5, :cond_38

    .line 789
    .line 790
    goto :goto_12

    .line 791
    :cond_38
    const/4 v5, 0x3

    .line 792
    goto :goto_13

    .line 793
    :sswitch_14
    const-string v6, "rss"

    .line 794
    .line 795
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    move-result v5

    .line 799
    if-nez v5, :cond_39

    .line 800
    .line 801
    goto :goto_12

    .line 802
    :cond_39
    const/4 v5, 0x2

    .line 803
    goto :goto_13

    .line 804
    :sswitch_15
    const-string v6, "pss"

    .line 805
    .line 806
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result v5

    .line 810
    if-nez v5, :cond_3a

    .line 811
    .line 812
    goto :goto_12

    .line 813
    :cond_3a
    const/4 v5, 0x1

    .line 814
    goto :goto_13

    .line 815
    :sswitch_16
    const-string v6, "pid"

    .line 816
    .line 817
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-result v5

    .line 821
    if-nez v5, :cond_3b

    .line 822
    .line 823
    goto :goto_12

    .line 824
    :cond_3b
    const/4 v5, 0x0

    .line 825
    goto :goto_13

    .line 826
    :goto_12
    const/4 v5, -0x1

    .line 827
    :goto_13
    packed-switch v5, :pswitch_data_0

    .line 828
    .line 829
    .line 830
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 831
    .line 832
    .line 833
    goto :goto_11

    .line 834
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    .line 835
    .line 836
    .line 837
    move-result v5

    .line 838
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    iput-object v5, v4, Lj6/c$a;->d:Ljava/lang/Integer;

    .line 843
    .line 844
    goto :goto_11

    .line 845
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v5

    .line 849
    iput-object v5, v4, Lj6/c$a;->h:Ljava/lang/String;

    .line 850
    .line 851
    goto/16 :goto_11

    .line 852
    .line 853
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    .line 854
    .line 855
    .line 856
    move-result v5

    .line 857
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 858
    .line 859
    .line 860
    move-result-object v5

    .line 861
    iput-object v5, v4, Lj6/c$a;->c:Ljava/lang/Integer;

    .line 862
    .line 863
    goto/16 :goto_11

    .line 864
    .line 865
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v5

    .line 869
    if-eqz v5, :cond_3c

    .line 870
    .line 871
    iput-object v5, v4, Lj6/c$a;->b:Ljava/lang/String;

    .line 872
    .line 873
    goto/16 :goto_11

    .line 874
    .line 875
    :cond_3c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 876
    .line 877
    const-string v1, "Null processName"

    .line 878
    .line 879
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    throw v0

    .line 883
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    .line 884
    .line 885
    .line 886
    move-result-wide v5

    .line 887
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 888
    .line 889
    .line 890
    move-result-object v5

    .line 891
    iput-object v5, v4, Lj6/c$a;->g:Ljava/lang/Long;

    .line 892
    .line 893
    goto/16 :goto_11

    .line 894
    .line 895
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    .line 896
    .line 897
    .line 898
    move-result-wide v5

    .line 899
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 900
    .line 901
    .line 902
    move-result-object v5

    .line 903
    iput-object v5, v4, Lj6/c$a;->f:Ljava/lang/Long;

    .line 904
    .line 905
    goto/16 :goto_11

    .line 906
    .line 907
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    .line 908
    .line 909
    .line 910
    move-result-wide v5

    .line 911
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 912
    .line 913
    .line 914
    move-result-object v5

    .line 915
    iput-object v5, v4, Lj6/c$a;->e:Ljava/lang/Long;

    .line 916
    .line 917
    goto/16 :goto_11

    .line 918
    .line 919
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    .line 920
    .line 921
    .line 922
    move-result v5

    .line 923
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 924
    .line 925
    .line 926
    move-result-object v5

    .line 927
    iput-object v5, v4, Lj6/c$a;->a:Ljava/lang/Integer;

    .line 928
    .line 929
    goto/16 :goto_11

    .line 930
    .line 931
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v4}, Lj6/c$a;->a()Lj6/c;

    .line 935
    .line 936
    .line 937
    move-result-object v4

    .line 938
    move-object/from16 v18, v4

    .line 939
    .line 940
    :goto_14
    const/4 v5, 0x4

    .line 941
    const/4 v4, 0x3

    .line 942
    const/4 v6, 0x1

    .line 943
    const/4 v7, 0x2

    .line 944
    goto/16 :goto_9

    .line 945
    .line 946
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 947
    .line 948
    .line 949
    if-nez v19, :cond_3f

    .line 950
    .line 951
    const-string v4, " signal"

    .line 952
    .line 953
    goto :goto_15

    .line 954
    :cond_3f
    move-object v4, v9

    .line 955
    :goto_15
    if-nez v20, :cond_40

    .line 956
    .line 957
    const-string v5, " binaries"

    .line 958
    .line 959
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v4

    .line 963
    :cond_40
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 964
    .line 965
    .line 966
    move-result v5

    .line 967
    if-eqz v5, :cond_41

    .line 968
    .line 969
    new-instance v4, Lj6/m;

    .line 970
    .line 971
    move-object v15, v4

    .line 972
    invoke-direct/range {v15 .. v20}, Lj6/m;-><init>(Lj6/b0;Lj6/a0$e$d$a$b$b;Lj6/a0$a;Lj6/a0$e$d$a$b$c;Lj6/b0;)V

    .line 973
    .line 974
    .line 975
    move-object v11, v4

    .line 976
    goto :goto_16

    .line 977
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 978
    .line 979
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v1

    .line 983
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    throw v0

    .line 987
    :cond_42
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 988
    .line 989
    .line 990
    move-result v4

    .line 991
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 992
    .line 993
    .line 994
    move-result-object v4

    .line 995
    move-object v14, v4

    .line 996
    :goto_16
    const/4 v5, 0x4

    .line 997
    const/4 v4, 0x3

    .line 998
    const/4 v6, 0x1

    .line 999
    const/4 v7, 0x2

    .line 1000
    goto/16 :goto_4

    .line 1001
    .line 1002
    :cond_43
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 1003
    .line 1004
    .line 1005
    if-nez v11, :cond_44

    .line 1006
    .line 1007
    const-string v9, " execution"

    .line 1008
    .line 1009
    :cond_44
    if-nez v2, :cond_45

    .line 1010
    .line 1011
    const-string v4, " uiOrientation"

    .line 1012
    .line 1013
    invoke-virtual {v9, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v9

    .line 1017
    :cond_45
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 1018
    .line 1019
    .line 1020
    move-result v4

    .line 1021
    if-eqz v4, :cond_46

    .line 1022
    .line 1023
    new-instance v3, Lj6/l;

    .line 1024
    .line 1025
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1026
    .line 1027
    .line 1028
    move-result v15

    .line 1029
    move-object v10, v3

    .line 1030
    invoke-direct/range {v10 .. v15}, Lj6/l;-><init>(Lj6/a0$e$d$a$b;Lj6/b0;Lj6/b0;Ljava/lang/Boolean;I)V

    .line 1031
    .line 1032
    .line 1033
    iput-object v3, v1, Lj6/k$a;->c:Lj6/a0$e$d$a;

    .line 1034
    .line 1035
    goto/16 :goto_0

    .line 1036
    .line 1037
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1038
    .line 1039
    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v1

    .line 1043
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1044
    .line 1045
    .line 1046
    throw v0

    .line 1047
    :cond_47
    new-instance v2, Lj6/s$a;

    .line 1048
    .line 1049
    invoke-direct {v2}, Lj6/s$a;-><init>()V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 1053
    .line 1054
    .line 1055
    :goto_17
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 1056
    .line 1057
    .line 1058
    move-result v3

    .line 1059
    if-eqz v3, :cond_54

    .line 1060
    .line 1061
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v3

    .line 1065
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 1069
    .line 1070
    .line 1071
    move-result v4

    .line 1072
    sparse-switch v4, :sswitch_data_4

    .line 1073
    .line 1074
    .line 1075
    goto :goto_18

    .line 1076
    :sswitch_17
    const-string v4, "proximityOn"

    .line 1077
    .line 1078
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1079
    .line 1080
    .line 1081
    move-result v3

    .line 1082
    if-nez v3, :cond_48

    .line 1083
    .line 1084
    goto :goto_18

    .line 1085
    :cond_48
    const/4 v3, 0x5

    .line 1086
    goto :goto_19

    .line 1087
    :sswitch_18
    const-string v4, "ramUsed"

    .line 1088
    .line 1089
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v3

    .line 1093
    if-nez v3, :cond_49

    .line 1094
    .line 1095
    goto :goto_18

    .line 1096
    :cond_49
    const/4 v3, 0x4

    .line 1097
    goto :goto_19

    .line 1098
    :sswitch_19
    const-string v4, "diskUsed"

    .line 1099
    .line 1100
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v3

    .line 1104
    if-nez v3, :cond_4a

    .line 1105
    .line 1106
    goto :goto_18

    .line 1107
    :cond_4a
    const/4 v3, 0x3

    .line 1108
    goto :goto_19

    .line 1109
    :sswitch_1a
    const-string v4, "orientation"

    .line 1110
    .line 1111
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1112
    .line 1113
    .line 1114
    move-result v3

    .line 1115
    if-nez v3, :cond_4b

    .line 1116
    .line 1117
    goto :goto_18

    .line 1118
    :cond_4b
    const/4 v3, 0x2

    .line 1119
    goto :goto_19

    .line 1120
    :sswitch_1b
    const-string v4, "batteryVelocity"

    .line 1121
    .line 1122
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1123
    .line 1124
    .line 1125
    move-result v3

    .line 1126
    if-nez v3, :cond_4c

    .line 1127
    .line 1128
    goto :goto_18

    .line 1129
    :cond_4c
    const/4 v3, 0x1

    .line 1130
    goto :goto_19

    .line 1131
    :sswitch_1c
    const-string v4, "batteryLevel"

    .line 1132
    .line 1133
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1134
    .line 1135
    .line 1136
    move-result v3

    .line 1137
    if-nez v3, :cond_4d

    .line 1138
    .line 1139
    goto :goto_18

    .line 1140
    :cond_4d
    const/4 v3, 0x0

    .line 1141
    goto :goto_19

    .line 1142
    :goto_18
    const/4 v3, -0x1

    .line 1143
    :goto_19
    const/4 v4, 0x1

    .line 1144
    if-eqz v3, :cond_53

    .line 1145
    .line 1146
    if-eq v3, v4, :cond_52

    .line 1147
    .line 1148
    const/4 v5, 0x4

    .line 1149
    const/4 v6, 0x2

    .line 1150
    if-eq v3, v6, :cond_51

    .line 1151
    .line 1152
    const/4 v7, 0x5

    .line 1153
    const/4 v8, 0x3

    .line 1154
    if-eq v3, v8, :cond_50

    .line 1155
    .line 1156
    if-eq v3, v5, :cond_4f

    .line 1157
    .line 1158
    if-eq v3, v7, :cond_4e

    .line 1159
    .line 1160
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 1161
    .line 1162
    .line 1163
    goto :goto_17

    .line 1164
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 1165
    .line 1166
    .line 1167
    move-result v3

    .line 1168
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v3

    .line 1172
    iput-object v3, v2, Lj6/s$a;->c:Ljava/lang/Boolean;

    .line 1173
    .line 1174
    goto :goto_17

    .line 1175
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    .line 1176
    .line 1177
    .line 1178
    move-result-wide v9

    .line 1179
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v3

    .line 1183
    iput-object v3, v2, Lj6/s$a;->e:Ljava/lang/Long;

    .line 1184
    .line 1185
    goto/16 :goto_17

    .line 1186
    .line 1187
    :cond_50
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    .line 1188
    .line 1189
    .line 1190
    move-result-wide v9

    .line 1191
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v3

    .line 1195
    iput-object v3, v2, Lj6/s$a;->f:Ljava/lang/Long;

    .line 1196
    .line 1197
    goto/16 :goto_17

    .line 1198
    .line 1199
    :cond_51
    const/4 v8, 0x3

    .line 1200
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    .line 1201
    .line 1202
    .line 1203
    move-result v3

    .line 1204
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v3

    .line 1208
    iput-object v3, v2, Lj6/s$a;->d:Ljava/lang/Integer;

    .line 1209
    .line 1210
    goto/16 :goto_17

    .line 1211
    .line 1212
    :cond_52
    const/4 v6, 0x2

    .line 1213
    const/4 v8, 0x3

    .line 1214
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    .line 1215
    .line 1216
    .line 1217
    move-result v3

    .line 1218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v3

    .line 1222
    iput-object v3, v2, Lj6/s$a;->b:Ljava/lang/Integer;

    .line 1223
    .line 1224
    goto/16 :goto_17

    .line 1225
    .line 1226
    :cond_53
    const/4 v6, 0x2

    .line 1227
    const/4 v8, 0x3

    .line 1228
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    .line 1229
    .line 1230
    .line 1231
    move-result-wide v9

    .line 1232
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v3

    .line 1236
    iput-object v3, v2, Lj6/s$a;->a:Ljava/lang/Double;

    .line 1237
    .line 1238
    goto/16 :goto_17

    .line 1239
    .line 1240
    :cond_54
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v2}, Lj6/s$a;->a()Lj6/s;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v2

    .line 1247
    iput-object v2, v1, Lj6/k$a;->d:Lj6/a0$e$d$c;

    .line 1248
    .line 1249
    goto/16 :goto_0

    .line 1250
    .line 1251
    :cond_55
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v1}, Lj6/k$a;->a()Lj6/k;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    return-object v0

    .line 1259
    :sswitch_data_0
    .sparse-switch
        -0x4f94e1aa -> :sswitch_4
        0x17a21 -> :sswitch_3
        0x1a344 -> :sswitch_2
        0x368f3a -> :sswitch_1
        0x3492916 -> :sswitch_0
    .end sparse-switch

    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    :sswitch_data_1
    .sparse-switch
        -0x4f67aad2 -> :sswitch_9
        -0x4106f4e8 -> :sswitch_8
        -0x4c83daf -> :sswitch_7
        0x211737a8 -> :sswitch_6
        0x375b6a9c -> :sswitch_5
    .end sparse-switch

    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    :sswitch_data_2
    .sparse-switch
        -0x51f6ffd3 -> :sswitch_e
        -0x4fbf4c57 -> :sswitch_d
        -0x35ca9158 -> :sswitch_c
        0x37e2e05f -> :sswitch_b
        0x584fd04f -> :sswitch_a
    .end sparse-switch

    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    :sswitch_data_3
    .sparse-switch
        0x1b18b -> :sswitch_16
        0x1b2d0 -> :sswitch_15
        0x1ba52 -> :sswitch_14
        0x3492916 -> :sswitch_13
        0xc0f3d9a -> :sswitch_12
        0x2b0af251 -> :sswitch_11
        0x2b253061 -> :sswitch_10
        0x7eb2da74 -> :sswitch_f
    .end sparse-switch

    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    :sswitch_data_4
    .sparse-switch
        -0x65d74289 -> :sswitch_1c
        -0x56c20df6 -> :sswitch_1b
        -0x55cd0a30 -> :sswitch_1a
        0x10ad56fa -> :sswitch_19
        0x3a34d8fb -> :sswitch_18
        0x5a6876be -> :sswitch_17
    .end sparse-switch
.end method

.method public static e(Landroid/util/JsonReader;)Lj6/o;
    .locals 8
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move-object v2, v0

    .line 6
    move-object v3, v2

    .line 7
    move-object v4, v3

    .line 8
    move-object v5, v4

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_7

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    const/4 v6, -0x1

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    sparse-switch v7, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :sswitch_0
    const-string v7, "overflowCount"

    .line 35
    .line 36
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 v6, 0x4

    .line 44
    goto :goto_1

    .line 45
    :sswitch_1
    const-string v7, "causedBy"

    .line 46
    .line 47
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v6, 0x3

    .line 55
    goto :goto_1

    .line 56
    :sswitch_2
    const-string v7, "type"

    .line 57
    .line 58
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v6, 0x2

    .line 66
    goto :goto_1

    .line 67
    :sswitch_3
    const-string v7, "reason"

    .line 68
    .line 69
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    const/4 v6, 0x1

    .line 77
    goto :goto_1

    .line 78
    :sswitch_4
    const-string v7, "frames"

    .line 79
    .line 80
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const/4 v6, 0x0

    .line 88
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_0

    .line 104
    :pswitch_1
    invoke-static {p0}, Lk6/a;->e(Landroid/util/JsonReader;)Lj6/o;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    goto :goto_0

    .line 109
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 117
    .line 118
    const-string v0, "Null type"

    .line 119
    .line 120
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    goto :goto_0

    .line 129
    :pswitch_4
    new-instance v1, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 135
    .line 136
    .line 137
    :goto_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_6

    .line 142
    .line 143
    invoke-static {p0}, Lk6/a;->a(Landroid/util/JsonReader;)Lj6/r;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 152
    .line 153
    .line 154
    new-instance v4, Lj6/b0;

    .line 155
    .line 156
    invoke-direct {v4, v1}, Lj6/b0;-><init>(Ljava/util/List;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 162
    .line 163
    .line 164
    if-nez v2, :cond_8

    .line 165
    .line 166
    const-string p0, " type"

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_8
    const-string p0, ""

    .line 170
    .line 171
    :goto_3
    if-nez v4, :cond_9

    .line 172
    .line 173
    const-string v1, " frames"

    .line 174
    .line 175
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    :cond_9
    if-nez v0, :cond_a

    .line 180
    .line 181
    const-string v1, " overflowCount"

    .line 182
    .line 183
    invoke-static {p0, v1}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_b

    .line 192
    .line 193
    new-instance p0, Lj6/o;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    move-object v1, p0

    .line 200
    invoke-direct/range {v1 .. v6}, Lj6/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lj6/b0;Lj6/a0$e$d$a$b$b;I)V

    .line 201
    .line 202
    .line 203
    return-object p0

    .line 204
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    const-string v1, "Missing required properties:"

    .line 207
    .line 208
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v0

    .line 216
    nop

    .line 217
    :sswitch_data_0
    .sparse-switch
        -0x4b7d7b5a -> :sswitch_4
        -0x37ba6dbc -> :sswitch_3
        0x368f3a -> :sswitch_2
        0x57bc6d2 -> :sswitch_1
        0x22acde2d -> :sswitch_0
    .end sparse-switch

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(Landroid/util/JsonReader;)Lj6/b;
    .locals 29
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lj6/a0;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    new-instance v0, Lj6/b$a;

    .line 4
    .line 5
    invoke-direct {v0}, Lj6/b$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_4f

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v10, 0x1

    .line 29
    const-string v12, "displayVersion"

    .line 30
    .line 31
    const-string v13, "platform"

    .line 32
    .line 33
    const-string v14, "installationUuid"

    .line 34
    .line 35
    const-string v15, "buildVersion"

    .line 36
    .line 37
    sparse-switch v2, :sswitch_data_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :sswitch_0
    const-string v2, "session"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/4 v1, 0x7

    .line 51
    goto :goto_2

    .line 52
    :sswitch_1
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v1, 0x6

    .line 60
    goto :goto_2

    .line 61
    :sswitch_2
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const/4 v1, 0x5

    .line 69
    goto :goto_2

    .line 70
    :sswitch_3
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const/4 v1, 0x4

    .line 78
    goto :goto_2

    .line 79
    :sswitch_4
    const-string v2, "gmpAppId"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const/4 v1, 0x3

    .line 89
    goto :goto_2

    .line 90
    :sswitch_5
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_5

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    const/4 v1, 0x2

    .line 98
    goto :goto_2

    .line 99
    :sswitch_6
    const-string v2, "sdkVersion"

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_6

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    const/4 v1, 0x1

    .line 109
    goto :goto_2

    .line 110
    :sswitch_7
    const-string v2, "ndkPayload"

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_7

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    const/4 v1, 0x0

    .line 120
    goto :goto_2

    .line 121
    :goto_1
    const/4 v1, -0x1

    .line 122
    :goto_2
    const-string v2, "Null buildVersion"

    .line 123
    .line 124
    const-string v16, ""

    .line 125
    .line 126
    const-string v3, "Missing required properties:"

    .line 127
    .line 128
    const/16 v17, 0x0

    .line 129
    .line 130
    packed-switch v1, :pswitch_data_0

    .line 131
    .line 132
    .line 133
    move-object/from16 v5, p0

    .line 134
    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :pswitch_0
    new-instance v1, Lj6/g$a;

    .line 140
    .line 141
    invoke-direct {v1}, Lj6/g$a;-><init>()V

    .line 142
    .line 143
    .line 144
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 145
    .line 146
    iput-object v6, v1, Lj6/g$a;->e:Ljava/lang/Boolean;

    .line 147
    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 149
    .line 150
    .line 151
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_44

    .line 156
    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 165
    .line 166
    .line 167
    move-result v18

    .line 168
    const/16 v19, 0x8

    .line 169
    .line 170
    const-string v7, "identifier"

    .line 171
    .line 172
    sparse-switch v18, :sswitch_data_1

    .line 173
    .line 174
    .line 175
    goto/16 :goto_4

    .line 176
    .line 177
    :sswitch_8
    const-string v4, "generatorType"

    .line 178
    .line 179
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-nez v4, :cond_8

    .line 184
    .line 185
    goto/16 :goto_4

    .line 186
    .line 187
    :cond_8
    const/16 v4, 0xa

    .line 188
    .line 189
    goto/16 :goto_5

    .line 190
    .line 191
    :sswitch_9
    const-string v4, "crashed"

    .line 192
    .line 193
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-nez v4, :cond_9

    .line 198
    .line 199
    goto/16 :goto_4

    .line 200
    .line 201
    :cond_9
    const/16 v4, 0x9

    .line 202
    .line 203
    goto/16 :goto_5

    .line 204
    .line 205
    :sswitch_a
    const-string v4, "generator"

    .line 206
    .line 207
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-nez v4, :cond_a

    .line 212
    .line 213
    goto/16 :goto_4

    .line 214
    .line 215
    :cond_a
    const/16 v4, 0x8

    .line 216
    .line 217
    goto/16 :goto_5

    .line 218
    .line 219
    :sswitch_b
    const-string v4, "user"

    .line 220
    .line 221
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-nez v4, :cond_b

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_b
    const/4 v4, 0x7

    .line 229
    goto :goto_5

    .line 230
    :sswitch_c
    const-string v4, "app"

    .line 231
    .line 232
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-nez v4, :cond_c

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_c
    const/4 v4, 0x6

    .line 240
    goto :goto_5

    .line 241
    :sswitch_d
    const-string v4, "os"

    .line 242
    .line 243
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-nez v4, :cond_d

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_d
    const/4 v4, 0x5

    .line 251
    goto :goto_5

    .line 252
    :sswitch_e
    const-string v4, "events"

    .line 253
    .line 254
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-nez v4, :cond_e

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_e
    const/4 v4, 0x4

    .line 262
    goto :goto_5

    .line 263
    :sswitch_f
    const-string v4, "device"

    .line 264
    .line 265
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-nez v4, :cond_f

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_f
    const/4 v4, 0x3

    .line 273
    goto :goto_5

    .line 274
    :sswitch_10
    const-string v4, "endedAt"

    .line 275
    .line 276
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-nez v4, :cond_10

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_10
    const/4 v4, 0x2

    .line 284
    goto :goto_5

    .line 285
    :sswitch_11
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-nez v4, :cond_11

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_11
    const/4 v4, 0x1

    .line 293
    goto :goto_5

    .line 294
    :sswitch_12
    const-string v4, "startedAt"

    .line 295
    .line 296
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    if-nez v4, :cond_12

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_12
    const/4 v4, 0x0

    .line 304
    goto :goto_5

    .line 305
    :goto_4
    const/4 v4, -0x1

    .line 306
    :goto_5
    const-string v6, "Null version"

    .line 307
    .line 308
    const-string v5, "Null identifier"

    .line 309
    .line 310
    const-string v21, " identifier"

    .line 311
    .line 312
    const-string v8, "version"

    .line 313
    .line 314
    packed-switch v4, :pswitch_data_1

    .line 315
    .line 316
    .line 317
    const/4 v5, 0x2

    .line 318
    const/4 v7, 0x3

    .line 319
    const/4 v11, 0x5

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 321
    .line 322
    .line 323
    goto/16 :goto_3

    .line 324
    .line 325
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    iput-object v4, v1, Lj6/g$a;->k:Ljava/lang/Integer;

    .line 334
    .line 335
    goto/16 :goto_3

    .line 336
    .line 337
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    iput-object v4, v1, Lj6/g$a;->e:Ljava/lang/Boolean;

    .line 346
    .line 347
    goto/16 :goto_3

    .line 348
    .line 349
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    if-eqz v4, :cond_13

    .line 354
    .line 355
    iput-object v4, v1, Lj6/g$a;->a:Ljava/lang/String;

    .line 356
    .line 357
    goto/16 :goto_3

    .line 358
    .line 359
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    .line 360
    .line 361
    const-string v1, "Null generator"

    .line 362
    .line 363
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v0

    .line 367
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 368
    .line 369
    .line 370
    move-object/from16 v4, v17

    .line 371
    .line 372
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    if-eqz v6, :cond_16

    .line 377
    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    if-nez v6, :cond_14

    .line 390
    .line 391
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 392
    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    if-eqz v4, :cond_15

    .line 400
    .line 401
    goto :goto_6

    .line 402
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    .line 403
    .line 404
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    throw v0

    .line 408
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 409
    .line 410
    .line 411
    if-nez v4, :cond_17

    .line 412
    .line 413
    move-object/from16 v5, v21

    .line 414
    .line 415
    goto :goto_7

    .line 416
    :cond_17
    move-object/from16 v5, v16

    .line 417
    .line 418
    :goto_7
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    if-eqz v6, :cond_18

    .line 423
    .line 424
    new-instance v5, Lj6/v;

    .line 425
    .line 426
    invoke-direct {v5, v4}, Lj6/v;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iput-object v5, v1, Lj6/g$a;->g:Lj6/a0$e$f;

    .line 430
    .line 431
    goto/16 :goto_3

    .line 432
    .line 433
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 434
    .line 435
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v0

    .line 443
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 444
    .line 445
    .line 446
    move-object/from16 v4, v17

    .line 447
    .line 448
    move-object/from16 v19, v4

    .line 449
    .line 450
    move-object/from16 v23, v19

    .line 451
    .line 452
    move-object/from16 v24, v23

    .line 453
    .line 454
    move-object/from16 v25, v24

    .line 455
    .line 456
    move-object/from16 v26, v25

    .line 457
    .line 458
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 459
    .line 460
    .line 461
    move-result v27

    .line 462
    if-eqz v27, :cond_27

    .line 463
    .line 464
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v11

    .line 468
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 472
    .line 473
    .line 474
    move-result v28

    .line 475
    sparse-switch v28, :sswitch_data_2

    .line 476
    .line 477
    .line 478
    goto :goto_9

    .line 479
    :sswitch_13
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v11

    .line 483
    if-nez v11, :cond_19

    .line 484
    .line 485
    goto :goto_9

    .line 486
    :cond_19
    const/4 v9, 0x5

    .line 487
    goto :goto_a

    .line 488
    :sswitch_14
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v11

    .line 492
    if-nez v11, :cond_1a

    .line 493
    .line 494
    goto :goto_9

    .line 495
    :cond_1a
    const/4 v9, 0x4

    .line 496
    goto :goto_a

    .line 497
    :sswitch_15
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v11

    .line 501
    if-nez v11, :cond_1b

    .line 502
    .line 503
    goto :goto_9

    .line 504
    :cond_1b
    const/4 v9, 0x3

    .line 505
    goto :goto_a

    .line 506
    :sswitch_16
    const-string v9, "developmentPlatformVersion"

    .line 507
    .line 508
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v9

    .line 512
    if-nez v9, :cond_1c

    .line 513
    .line 514
    goto :goto_9

    .line 515
    :cond_1c
    const/4 v9, 0x2

    .line 516
    goto :goto_a

    .line 517
    :sswitch_17
    const-string v9, "developmentPlatform"

    .line 518
    .line 519
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v9

    .line 523
    if-nez v9, :cond_1d

    .line 524
    .line 525
    goto :goto_9

    .line 526
    :cond_1d
    const/4 v9, 0x1

    .line 527
    goto :goto_a

    .line 528
    :sswitch_18
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    if-nez v9, :cond_1e

    .line 533
    .line 534
    goto :goto_9

    .line 535
    :cond_1e
    const/4 v9, 0x0

    .line 536
    goto :goto_a

    .line 537
    :goto_9
    const/4 v9, -0x1

    .line 538
    :goto_a
    if-eqz v9, :cond_25

    .line 539
    .line 540
    if-eq v9, v10, :cond_24

    .line 541
    .line 542
    const/4 v11, 0x2

    .line 543
    if-eq v9, v11, :cond_23

    .line 544
    .line 545
    const/4 v11, 0x3

    .line 546
    if-eq v9, v11, :cond_21

    .line 547
    .line 548
    const/4 v11, 0x4

    .line 549
    if-eq v9, v11, :cond_20

    .line 550
    .line 551
    const/4 v11, 0x5

    .line 552
    if-eq v9, v11, :cond_1f

    .line 553
    .line 554
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 555
    .line 556
    .line 557
    goto :goto_8

    .line 558
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v23

    .line 562
    goto :goto_8

    .line 563
    :cond_20
    const/4 v11, 0x5

    .line 564
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v24

    .line 568
    goto :goto_8

    .line 569
    :cond_21
    const/4 v11, 0x5

    .line 570
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v19

    .line 574
    if-eqz v19, :cond_22

    .line 575
    .line 576
    goto :goto_8

    .line 577
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    .line 578
    .line 579
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    throw v0

    .line 583
    :cond_23
    const/4 v11, 0x5

    .line 584
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v26

    .line 588
    goto/16 :goto_8

    .line 589
    .line 590
    :cond_24
    const/4 v11, 0x5

    .line 591
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v25

    .line 595
    goto/16 :goto_8

    .line 596
    .line 597
    :cond_25
    const/4 v11, 0x5

    .line 598
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    if-eqz v4, :cond_26

    .line 603
    .line 604
    goto/16 :goto_8

    .line 605
    .line 606
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    .line 607
    .line 608
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    throw v0

    .line 612
    :cond_27
    const/4 v11, 0x5

    .line 613
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 614
    .line 615
    .line 616
    if-nez v4, :cond_28

    .line 617
    .line 618
    move-object/from16 v5, v21

    .line 619
    .line 620
    goto :goto_b

    .line 621
    :cond_28
    move-object/from16 v5, v16

    .line 622
    .line 623
    :goto_b
    if-nez v19, :cond_29

    .line 624
    .line 625
    const-string v6, " version"

    .line 626
    .line 627
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    :cond_29
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 632
    .line 633
    .line 634
    move-result v6

    .line 635
    if-eqz v6, :cond_2a

    .line 636
    .line 637
    new-instance v5, Lj6/h;

    .line 638
    .line 639
    move-object/from16 v20, v5

    .line 640
    .line 641
    move-object/from16 v21, v4

    .line 642
    .line 643
    move-object/from16 v22, v19

    .line 644
    .line 645
    invoke-direct/range {v20 .. v26}, Lj6/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    iput-object v5, v1, Lj6/g$a;->f:Lj6/a0$e$a;

    .line 649
    .line 650
    const/4 v5, 0x2

    .line 651
    const/4 v7, 0x3

    .line 652
    goto/16 :goto_3

    .line 653
    .line 654
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 655
    .line 656
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    throw v0

    .line 664
    :pswitch_6
    const/4 v11, 0x5

    .line 665
    new-instance v4, Lj6/u$a;

    .line 666
    .line 667
    invoke-direct {v4}, Lj6/u$a;-><init>()V

    .line 668
    .line 669
    .line 670
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 671
    .line 672
    .line 673
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 674
    .line 675
    .line 676
    move-result v5

    .line 677
    if-eqz v5, :cond_35

    .line 678
    .line 679
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 687
    .line 688
    .line 689
    move-result v7

    .line 690
    sparse-switch v7, :sswitch_data_3

    .line 691
    .line 692
    .line 693
    goto :goto_d

    .line 694
    :sswitch_19
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move-result v5

    .line 698
    if-nez v5, :cond_2b

    .line 699
    .line 700
    goto :goto_d

    .line 701
    :cond_2b
    const/4 v5, 0x3

    .line 702
    goto :goto_e

    .line 703
    :sswitch_1a
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    move-result v5

    .line 707
    if-nez v5, :cond_2c

    .line 708
    .line 709
    goto :goto_d

    .line 710
    :cond_2c
    const/4 v5, 0x2

    .line 711
    goto :goto_e

    .line 712
    :sswitch_1b
    const-string v7, "jailbroken"

    .line 713
    .line 714
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v5

    .line 718
    if-nez v5, :cond_2d

    .line 719
    .line 720
    goto :goto_d

    .line 721
    :cond_2d
    const/4 v5, 0x1

    .line 722
    goto :goto_e

    .line 723
    :sswitch_1c
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result v5

    .line 727
    if-nez v5, :cond_2e

    .line 728
    .line 729
    goto :goto_d

    .line 730
    :cond_2e
    const/4 v5, 0x0

    .line 731
    goto :goto_e

    .line 732
    :goto_d
    const/4 v5, -0x1

    .line 733
    :goto_e
    if-eqz v5, :cond_33

    .line 734
    .line 735
    if-eq v5, v10, :cond_32

    .line 736
    .line 737
    const/4 v7, 0x2

    .line 738
    if-eq v5, v7, :cond_30

    .line 739
    .line 740
    const/4 v7, 0x3

    .line 741
    if-eq v5, v7, :cond_2f

    .line 742
    .line 743
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 744
    .line 745
    .line 746
    goto :goto_c

    .line 747
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    .line 748
    .line 749
    .line 750
    move-result v5

    .line 751
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 752
    .line 753
    .line 754
    move-result-object v5

    .line 755
    iput-object v5, v4, Lj6/u$a;->a:Ljava/lang/Integer;

    .line 756
    .line 757
    goto :goto_c

    .line 758
    :cond_30
    const/4 v7, 0x3

    .line 759
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v5

    .line 763
    if-eqz v5, :cond_31

    .line 764
    .line 765
    iput-object v5, v4, Lj6/u$a;->b:Ljava/lang/String;

    .line 766
    .line 767
    goto :goto_c

    .line 768
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    .line 769
    .line 770
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    throw v0

    .line 774
    :cond_32
    const/4 v7, 0x3

    .line 775
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 776
    .line 777
    .line 778
    move-result v5

    .line 779
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 780
    .line 781
    .line 782
    move-result-object v5

    .line 783
    iput-object v5, v4, Lj6/u$a;->d:Ljava/lang/Boolean;

    .line 784
    .line 785
    goto :goto_c

    .line 786
    :cond_33
    const/4 v7, 0x3

    .line 787
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v5

    .line 791
    if-eqz v5, :cond_34

    .line 792
    .line 793
    iput-object v5, v4, Lj6/u$a;->c:Ljava/lang/String;

    .line 794
    .line 795
    goto :goto_c

    .line 796
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    .line 797
    .line 798
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    throw v0

    .line 802
    :cond_35
    const/4 v7, 0x3

    .line 803
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v4}, Lj6/u$a;->a()Lj6/u;

    .line 807
    .line 808
    .line 809
    move-result-object v4

    .line 810
    iput-object v4, v1, Lj6/g$a;->h:Lj6/a0$e$e;

    .line 811
    .line 812
    goto/16 :goto_13

    .line 813
    .line 814
    :pswitch_7
    const/4 v7, 0x3

    .line 815
    const/4 v11, 0x5

    .line 816
    new-instance v4, Ljava/util/ArrayList;

    .line 817
    .line 818
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .line 820
    .line 821
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 822
    .line 823
    .line 824
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 825
    .line 826
    .line 827
    move-result v5

    .line 828
    if-eqz v5, :cond_36

    .line 829
    .line 830
    invoke-static/range {p0 .. p0}, Lk6/a;->d(Landroid/util/JsonReader;)Lj6/k;

    .line 831
    .line 832
    .line 833
    move-result-object v5

    .line 834
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    goto :goto_f

    .line 838
    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 839
    .line 840
    .line 841
    new-instance v5, Lj6/b0;

    .line 842
    .line 843
    invoke-direct {v5, v4}, Lj6/b0;-><init>(Ljava/util/List;)V

    .line 844
    .line 845
    .line 846
    iput-object v5, v1, Lj6/g$a;->j:Lj6/b0;

    .line 847
    .line 848
    goto/16 :goto_13

    .line 849
    .line 850
    :pswitch_8
    const/4 v7, 0x3

    .line 851
    const/4 v11, 0x5

    .line 852
    new-instance v4, Lj6/j$a;

    .line 853
    .line 854
    invoke-direct {v4}, Lj6/j$a;-><init>()V

    .line 855
    .line 856
    .line 857
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 858
    .line 859
    .line 860
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 861
    .line 862
    .line 863
    move-result v5

    .line 864
    if-eqz v5, :cond_43

    .line 865
    .line 866
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v5

    .line 870
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 871
    .line 872
    .line 873
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 874
    .line 875
    .line 876
    move-result v6

    .line 877
    sparse-switch v6, :sswitch_data_4

    .line 878
    .line 879
    .line 880
    goto/16 :goto_11

    .line 881
    .line 882
    :sswitch_1d
    const-string v6, "modelClass"

    .line 883
    .line 884
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    move-result v5

    .line 888
    if-nez v5, :cond_37

    .line 889
    .line 890
    goto/16 :goto_11

    .line 891
    .line 892
    :cond_37
    const/16 v5, 0x8

    .line 893
    .line 894
    goto/16 :goto_12

    .line 895
    .line 896
    :sswitch_1e
    const-string v6, "state"

    .line 897
    .line 898
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 899
    .line 900
    .line 901
    move-result v5

    .line 902
    if-nez v5, :cond_38

    .line 903
    .line 904
    goto :goto_11

    .line 905
    :cond_38
    const/4 v5, 0x7

    .line 906
    goto :goto_12

    .line 907
    :sswitch_1f
    const-string v6, "model"

    .line 908
    .line 909
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 910
    .line 911
    .line 912
    move-result v5

    .line 913
    if-nez v5, :cond_39

    .line 914
    .line 915
    goto :goto_11

    .line 916
    :cond_39
    const/4 v5, 0x6

    .line 917
    goto :goto_12

    .line 918
    :sswitch_20
    const-string v6, "cores"

    .line 919
    .line 920
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 921
    .line 922
    .line 923
    move-result v5

    .line 924
    if-nez v5, :cond_3a

    .line 925
    .line 926
    goto :goto_11

    .line 927
    :cond_3a
    const/4 v5, 0x5

    .line 928
    goto :goto_12

    .line 929
    :sswitch_21
    const-string v6, "diskSpace"

    .line 930
    .line 931
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 932
    .line 933
    .line 934
    move-result v5

    .line 935
    if-nez v5, :cond_3b

    .line 936
    .line 937
    goto :goto_11

    .line 938
    :cond_3b
    const/4 v5, 0x4

    .line 939
    goto :goto_12

    .line 940
    :sswitch_22
    const-string v6, "arch"

    .line 941
    .line 942
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    move-result v5

    .line 946
    if-nez v5, :cond_3c

    .line 947
    .line 948
    goto :goto_11

    .line 949
    :cond_3c
    const/4 v5, 0x3

    .line 950
    goto :goto_12

    .line 951
    :sswitch_23
    const-string v6, "ram"

    .line 952
    .line 953
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 954
    .line 955
    .line 956
    move-result v5

    .line 957
    if-nez v5, :cond_3d

    .line 958
    .line 959
    goto :goto_11

    .line 960
    :cond_3d
    const/4 v5, 0x2

    .line 961
    goto :goto_12

    .line 962
    :sswitch_24
    const-string v6, "manufacturer"

    .line 963
    .line 964
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 965
    .line 966
    .line 967
    move-result v5

    .line 968
    if-nez v5, :cond_3e

    .line 969
    .line 970
    goto :goto_11

    .line 971
    :cond_3e
    const/4 v5, 0x1

    .line 972
    goto :goto_12

    .line 973
    :sswitch_25
    const-string v6, "simulator"

    .line 974
    .line 975
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    move-result v5

    .line 979
    if-nez v5, :cond_3f

    .line 980
    .line 981
    goto :goto_11

    .line 982
    :cond_3f
    const/4 v5, 0x0

    .line 983
    goto :goto_12

    .line 984
    :goto_11
    const/4 v5, -0x1

    .line 985
    :goto_12
    packed-switch v5, :pswitch_data_2

    .line 986
    .line 987
    .line 988
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 989
    .line 990
    .line 991
    goto/16 :goto_10

    .line 992
    .line 993
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v5

    .line 997
    if-eqz v5, :cond_40

    .line 998
    .line 999
    iput-object v5, v4, Lj6/j$a;->i:Ljava/lang/String;

    .line 1000
    .line 1001
    goto/16 :goto_10

    .line 1002
    .line 1003
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1004
    .line 1005
    const-string v1, "Null modelClass"

    .line 1006
    .line 1007
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    throw v0

    .line 1011
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    .line 1012
    .line 1013
    .line 1014
    move-result v5

    .line 1015
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v5

    .line 1019
    iput-object v5, v4, Lj6/j$a;->g:Ljava/lang/Integer;

    .line 1020
    .line 1021
    goto/16 :goto_10

    .line 1022
    .line 1023
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v5

    .line 1027
    if-eqz v5, :cond_41

    .line 1028
    .line 1029
    iput-object v5, v4, Lj6/j$a;->b:Ljava/lang/String;

    .line 1030
    .line 1031
    goto/16 :goto_10

    .line 1032
    .line 1033
    :cond_41
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1034
    .line 1035
    const-string v1, "Null model"

    .line 1036
    .line 1037
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    throw v0

    .line 1041
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    .line 1042
    .line 1043
    .line 1044
    move-result v5

    .line 1045
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v5

    .line 1049
    iput-object v5, v4, Lj6/j$a;->c:Ljava/lang/Integer;

    .line 1050
    .line 1051
    goto/16 :goto_10

    .line 1052
    .line 1053
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    .line 1054
    .line 1055
    .line 1056
    move-result-wide v5

    .line 1057
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v5

    .line 1061
    iput-object v5, v4, Lj6/j$a;->e:Ljava/lang/Long;

    .line 1062
    .line 1063
    goto/16 :goto_10

    .line 1064
    .line 1065
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    .line 1066
    .line 1067
    .line 1068
    move-result v5

    .line 1069
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v5

    .line 1073
    iput-object v5, v4, Lj6/j$a;->a:Ljava/lang/Integer;

    .line 1074
    .line 1075
    goto/16 :goto_10

    .line 1076
    .line 1077
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    .line 1078
    .line 1079
    .line 1080
    move-result-wide v5

    .line 1081
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v5

    .line 1085
    iput-object v5, v4, Lj6/j$a;->d:Ljava/lang/Long;

    .line 1086
    .line 1087
    goto/16 :goto_10

    .line 1088
    .line 1089
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v5

    .line 1093
    if-eqz v5, :cond_42

    .line 1094
    .line 1095
    iput-object v5, v4, Lj6/j$a;->h:Ljava/lang/String;

    .line 1096
    .line 1097
    goto/16 :goto_10

    .line 1098
    .line 1099
    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1100
    .line 1101
    const-string v1, "Null manufacturer"

    .line 1102
    .line 1103
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    throw v0

    .line 1107
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 1108
    .line 1109
    .line 1110
    move-result v5

    .line 1111
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v5

    .line 1115
    iput-object v5, v4, Lj6/j$a;->f:Ljava/lang/Boolean;

    .line 1116
    .line 1117
    goto/16 :goto_10

    .line 1118
    .line 1119
    :cond_43
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v4}, Lj6/j$a;->a()Lj6/j;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v4

    .line 1126
    iput-object v4, v1, Lj6/g$a;->i:Lj6/a0$e$c;

    .line 1127
    .line 1128
    goto :goto_13

    .line 1129
    :pswitch_12
    const/4 v7, 0x3

    .line 1130
    const/4 v11, 0x5

    .line 1131
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    .line 1132
    .line 1133
    .line 1134
    move-result-wide v4

    .line 1135
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v4

    .line 1139
    iput-object v4, v1, Lj6/g$a;->d:Ljava/lang/Long;

    .line 1140
    .line 1141
    :goto_13
    const/4 v5, 0x2

    .line 1142
    goto/16 :goto_3

    .line 1143
    .line 1144
    :pswitch_13
    const/4 v7, 0x3

    .line 1145
    const/4 v11, 0x5

    .line 1146
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v4

    .line 1150
    const/4 v5, 0x2

    .line 1151
    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 1152
    .line 1153
    .line 1154
    move-result-object v4

    .line 1155
    new-instance v6, Ljava/lang/String;

    .line 1156
    .line 1157
    sget-object v8, Lj6/a0;->a:Ljava/nio/charset/Charset;

    .line 1158
    .line 1159
    invoke-direct {v6, v4, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1160
    .line 1161
    .line 1162
    iput-object v6, v1, Lj6/g$a;->b:Ljava/lang/String;

    .line 1163
    .line 1164
    goto/16 :goto_3

    .line 1165
    .line 1166
    :pswitch_14
    const/4 v5, 0x2

    .line 1167
    const/4 v7, 0x3

    .line 1168
    const/4 v11, 0x5

    .line 1169
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    .line 1170
    .line 1171
    .line 1172
    move-result-wide v8

    .line 1173
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v4

    .line 1177
    iput-object v4, v1, Lj6/g$a;->c:Ljava/lang/Long;

    .line 1178
    .line 1179
    goto/16 :goto_3

    .line 1180
    .line 1181
    :cond_44
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v1}, Lj6/g$a;->a()Lj6/g;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v1

    .line 1188
    iput-object v1, v0, Lj6/b$a;->g:Lj6/a0$e;

    .line 1189
    .line 1190
    goto :goto_14

    .line 1191
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v1

    .line 1195
    if-eqz v1, :cond_45

    .line 1196
    .line 1197
    iput-object v1, v0, Lj6/b$a;->f:Ljava/lang/String;

    .line 1198
    .line 1199
    goto :goto_14

    .line 1200
    :cond_45
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1201
    .line 1202
    const-string v1, "Null displayVersion"

    .line 1203
    .line 1204
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    throw v0

    .line 1208
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    .line 1209
    .line 1210
    .line 1211
    move-result v1

    .line 1212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v1

    .line 1216
    iput-object v1, v0, Lj6/b$a;->c:Ljava/lang/Integer;

    .line 1217
    .line 1218
    goto :goto_14

    .line 1219
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v1

    .line 1223
    if-eqz v1, :cond_46

    .line 1224
    .line 1225
    iput-object v1, v0, Lj6/b$a;->d:Ljava/lang/String;

    .line 1226
    .line 1227
    goto :goto_14

    .line 1228
    :cond_46
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1229
    .line 1230
    const-string v1, "Null installationUuid"

    .line 1231
    .line 1232
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1233
    .line 1234
    .line 1235
    throw v0

    .line 1236
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v1

    .line 1240
    if-eqz v1, :cond_47

    .line 1241
    .line 1242
    iput-object v1, v0, Lj6/b$a;->b:Ljava/lang/String;

    .line 1243
    .line 1244
    goto :goto_14

    .line 1245
    :cond_47
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1246
    .line 1247
    const-string v1, "Null gmpAppId"

    .line 1248
    .line 1249
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1250
    .line 1251
    .line 1252
    throw v0

    .line 1253
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v1

    .line 1257
    if-eqz v1, :cond_48

    .line 1258
    .line 1259
    iput-object v1, v0, Lj6/b$a;->e:Ljava/lang/String;

    .line 1260
    .line 1261
    goto :goto_14

    .line 1262
    :cond_48
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1263
    .line 1264
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1265
    .line 1266
    .line 1267
    throw v0

    .line 1268
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v1

    .line 1272
    if-eqz v1, :cond_49

    .line 1273
    .line 1274
    iput-object v1, v0, Lj6/b$a;->a:Ljava/lang/String;

    .line 1275
    .line 1276
    :goto_14
    move-object/from16 v5, p0

    .line 1277
    .line 1278
    goto/16 :goto_0

    .line 1279
    .line 1280
    :cond_49
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1281
    .line 1282
    const-string v1, "Null sdkVersion"

    .line 1283
    .line 1284
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1285
    .line 1286
    .line 1287
    throw v0

    .line 1288
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 1289
    .line 1290
    .line 1291
    move-object/from16 v1, v17

    .line 1292
    .line 1293
    move-object v2, v1

    .line 1294
    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 1295
    .line 1296
    .line 1297
    move-result v4

    .line 1298
    if-eqz v4, :cond_4c

    .line 1299
    .line 1300
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v4

    .line 1304
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1305
    .line 1306
    .line 1307
    const-string v5, "files"

    .line 1308
    .line 1309
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1310
    .line 1311
    .line 1312
    move-result v5

    .line 1313
    if-nez v5, :cond_4b

    .line 1314
    .line 1315
    const-string v5, "orgId"

    .line 1316
    .line 1317
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v4

    .line 1321
    if-nez v4, :cond_4a

    .line 1322
    .line 1323
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    .line 1324
    .line 1325
    .line 1326
    goto :goto_15

    .line 1327
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v2

    .line 1331
    goto :goto_15

    .line 1332
    :cond_4b
    new-instance v1, Landroidx/constraintlayout/core/state/b;

    .line 1333
    .line 1334
    const/4 v4, 0x6

    .line 1335
    invoke-direct {v1, v4}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    .line 1336
    .line 1337
    .line 1338
    move-object/from16 v5, p0

    .line 1339
    .line 1340
    invoke-static {v5, v1}, Lk6/a;->c(Landroid/util/JsonReader;Lk6/a$a;)Lj6/b0;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v1

    .line 1344
    goto :goto_15

    .line 1345
    :cond_4c
    move-object/from16 v5, p0

    .line 1346
    .line 1347
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 1348
    .line 1349
    .line 1350
    if-nez v1, :cond_4d

    .line 1351
    .line 1352
    const-string v16, " files"

    .line 1353
    .line 1354
    :cond_4d
    move-object/from16 v4, v16

    .line 1355
    .line 1356
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1357
    .line 1358
    .line 1359
    move-result v6

    .line 1360
    if-eqz v6, :cond_4e

    .line 1361
    .line 1362
    new-instance v3, Lj6/e;

    .line 1363
    .line 1364
    invoke-direct {v3, v1, v2}, Lj6/e;-><init>(Lj6/b0;Ljava/lang/String;)V

    .line 1365
    .line 1366
    .line 1367
    iput-object v3, v0, Lj6/b$a;->h:Lj6/a0$d;

    .line 1368
    .line 1369
    goto/16 :goto_0

    .line 1370
    .line 1371
    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1372
    .line 1373
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v1

    .line 1377
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1378
    .line 1379
    .line 1380
    throw v0

    .line 1381
    :cond_4f
    move-object/from16 v5, p0

    .line 1382
    .line 1383
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {v0}, Lj6/b$a;->a()Lj6/b;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v0

    .line 1390
    return-object v0

    .line 1391
    :sswitch_data_0
    .sparse-switch
        -0x7e43cda7 -> :sswitch_7
        -0x74fb5cc2 -> :sswitch_6
        -0x36578976 -> :sswitch_5
        0x14879cf2 -> :sswitch_4
        0x2ae81915 -> :sswitch_3
        0x6fbd6873 -> :sswitch_2
        0x75c19db6 -> :sswitch_1
        0x76508296 -> :sswitch_0
    .end sparse-switch

    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
    .end packed-switch

    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    :sswitch_data_1
    .sparse-switch
        -0x7ee2d36c -> :sswitch_12
        -0x60775357 -> :sswitch_11
        -0x5fc4f373 -> :sswitch_10
        -0x4f94e1aa -> :sswitch_f
        -0x4cf81ee7 -> :sswitch_e
        0xde4 -> :sswitch_d
        0x17a21 -> :sswitch_c
        0x36ebcb -> :sswitch_b
        0x111a9ad3 -> :sswitch_a
        0x3d1e2286 -> :sswitch_9
        0x7a02fcad -> :sswitch_8
    .end sparse-switch

    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    :sswitch_data_2
    .sparse-switch
        -0x60775357 -> :sswitch_18
        -0x1ef60132 -> :sswitch_17
        0xcbc122a -> :sswitch_16
        0x14f51cd8 -> :sswitch_15
        0x2ae81915 -> :sswitch_14
        0x75c19db6 -> :sswitch_13
    .end sparse-switch

    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    :sswitch_data_3
    .sparse-switch
        -0x36578976 -> :sswitch_1c
        -0x11773b11 -> :sswitch_1b
        0x14f51cd8 -> :sswitch_1a
        0x6fbd6873 -> :sswitch_19
    .end sparse-switch

    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    :sswitch_data_4
    .sparse-switch
        -0x7618bbfc -> :sswitch_25
        -0x7561dc2f -> :sswitch_24
        0x1b81e -> :sswitch_23
        0x2dd056 -> :sswitch_22
        0x4dfed69 -> :sswitch_21
        0x5a744b4 -> :sswitch_20
        0x633fb29 -> :sswitch_1f
        0x68ac491 -> :sswitch_1e
        0x7bea4fcf -> :sswitch_1d
    .end sparse-switch

    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static g(Ljava/lang/String;)Lj6/b;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lk6/a;->f(Landroid/util/JsonReader;)Lj6/b;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.class public final Lx1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lw1/a;

.field public final h:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZZLjava/util/List;Lt1/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/a$a;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lx1/a$a;->b:Z

    iput-boolean p3, p0, Lx1/a$a;->c:Z

    iput-boolean p4, p0, Lx1/a$a;->d:Z

    iput-boolean p5, p0, Lx1/a$a;->e:Z

    iput-object p6, p0, Lx1/a$a;->f:Ljava/util/List;

    iput-object p7, p0, Lx1/a$a;->g:Lw1/a;

    const-string p1, "_id"

    const-string p2, "_display_name"

    const-string p3, "_data"

    const-string p4, "bucket_display_name"

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx1/a$a;->h:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lx1/a$a;->g:Lw1/a;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Lw1/a;->a(Ljava/lang/NullPointerException;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_d

    .line 29
    .line 30
    :cond_1
    iget-object v3, p0, Lx1/a$a;->h:[Ljava/lang/String;

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    aget-object v4, v3, v4

    .line 34
    .line 35
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/4 v5, 0x1

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    if-eqz v4, :cond_4

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-nez v8, :cond_2

    .line 53
    .line 54
    const/4 v8, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v8, 0x0

    .line 57
    :goto_0
    if-eqz v8, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    :try_start_0
    new-instance v8, Ljava/io/File;

    .line 61
    .line 62
    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catch_0
    nop

    .line 67
    :cond_4
    :goto_1
    move-object v8, v7

    .line 68
    :goto_2
    if-nez v8, :cond_5

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_5
    iget-object v9, p0, Lx1/a$a;->f:Ljava/util/List;

    .line 72
    .line 73
    if-eqz v9, :cond_6

    .line 74
    .line 75
    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_6

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_6
    iget-boolean v8, p0, Lx1/a$a;->e:Z

    .line 83
    .line 84
    const-string v9, "path"

    .line 85
    .line 86
    if-nez v8, :cond_7

    .line 87
    .line 88
    invoke-static {v4, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v4}, La2/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    const-string v10, "gif"

    .line 96
    .line 97
    invoke-static {v8, v10}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_7

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_7
    aget-object v6, v3, v6

    .line 105
    .line 106
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 111
    .line 112
    .line 113
    move-result-wide v10

    .line 114
    aget-object v5, v3, v5

    .line 115
    .line 116
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    if-eqz v5, :cond_8

    .line 125
    .line 126
    new-instance v7, Ld2/b;

    .line 127
    .line 128
    invoke-static {v4, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {v7, v10, v11, v5, v4}, Ld2/b;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_8
    :goto_3
    if-eqz v7, :cond_c

    .line 135
    .line 136
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    iget-boolean v4, p0, Lx1/a$a;->b:Z

    .line 140
    .line 141
    if-eqz v4, :cond_c

    .line 142
    .line 143
    const/4 v4, 0x3

    .line 144
    aget-object v3, v3, v4

    .line 145
    .line 146
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    if-nez v3, :cond_a

    .line 155
    .line 156
    new-instance v3, Ljava/io/File;

    .line 157
    .line 158
    iget-object v4, v7, Ld2/b;->c:Ljava/lang/String;

    .line 159
    .line 160
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    if-eqz v3, :cond_9

    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    goto :goto_4

    .line 174
    :cond_9
    const-string v3, "SDCARD"

    .line 175
    .line 176
    :cond_a
    :goto_4
    if-eqz v3, :cond_c

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, Ld2/a;

    .line 183
    .line 184
    if-nez v4, :cond_b

    .line 185
    .line 186
    new-instance v4, Ld2/a;

    .line 187
    .line 188
    invoke-direct {v4, v3}, Ld2/a;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    :cond_b
    iget-object v3, v4, Ld2/a;->b:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    :cond_c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-nez v3, :cond_1

    .line 204
    .line 205
    :cond_d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Ljava/lang/Iterable;

    .line 213
    .line 214
    invoke-static {p1}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-interface {v0, v1, p1}, Lw1/a;->b(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public final b(Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const-string v1, "EXTERNAL_CONTENT_URI"

    .line 12
    .line 13
    const-string v3, "{\n                MediaS\u2026\"external\")\n            }"

    .line 14
    .line 15
    const-string v4, "external"

    .line 16
    .line 17
    iget-boolean v5, p0, Lx1/a$a;->d:Z

    .line 18
    .line 19
    iget-boolean v6, p0, Lx1/a$a;->c:Z

    .line 20
    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    if-nez v6, :cond_2

    .line 26
    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    :goto_1
    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object v13, v3

    .line 38
    move-object v3, v1

    .line 39
    move-object v1, v13

    .line 40
    :goto_2
    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v3, "limit"

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_5

    .line 62
    :cond_3
    if-nez v6, :cond_5

    .line 63
    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 68
    .line 69
    move-object v13, v3

    .line 70
    move-object v3, v1

    .line 71
    move-object v1, v13

    .line 72
    goto :goto_4

    .line 73
    :cond_5
    :goto_3
    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_4
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_5
    move-object v8, v1

    .line 81
    if-eqz v6, :cond_6

    .line 82
    .line 83
    const-string v1, "media_type=3"

    .line 84
    .line 85
    :goto_6
    move-object v10, v1

    .line 86
    goto :goto_7

    .line 87
    :cond_6
    if-eqz v5, :cond_7

    .line 88
    .line 89
    const-string v1, "media_type=1 OR media_type=3"

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_7
    const-string v1, ""

    .line 93
    .line 94
    goto :goto_6

    .line 95
    :goto_7
    iget-object v1, p0, Lx1/a$a;->a:Landroid/content/Context;

    .line 96
    .line 97
    if-eqz v0, :cond_9

    .line 98
    .line 99
    new-instance v0, Landroid/os/Bundle;

    .line 100
    .line 101
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v3, "date_modified"

    .line 105
    .line 106
    filled-new-array {v3}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const-string v4, "android:query-arg-sort-columns"

    .line 111
    .line 112
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v3, "android:query-arg-sort-direction"

    .line 116
    .line 117
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const-string v2, "android:query-arg-sql-selection"

    .line 121
    .line 122
    invoke-virtual {v0, v2, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    const-string v2, "android:query-arg-limit"

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    :cond_8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iget-object v1, p0, Lx1/a$a;->h:[Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {p1, v8, v1, v0}, Landroidx/appcompat/widget/j;->e(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    return-object p1

    .line 147
    :cond_9
    if-eqz p1, :cond_a

    .line 148
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v2, "date_modified DESC LIMIT "

    .line 152
    .line 153
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    goto :goto_8

    .line 164
    :cond_a
    const-string p1, "date_modified DESC"

    .line 165
    .line 166
    :goto_8
    move-object v12, p1

    .line 167
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    iget-object v9, p0, Lx1/a$a;->h:[Ljava/lang/String;

    .line 172
    .line 173
    const/4 v11, 0x0

    .line 174
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    return-object p1
.end method

.method public final run()V
    .locals 4

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v1}, Lx1/a$a;->b(Ljava/lang/Integer;)Landroid/database/Cursor;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ne v3, v0, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    :cond_0
    invoke-virtual {p0, v1}, Lx1/a$a;->a(Landroid/database/Cursor;)V

    .line 22
    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lx1/a$a;->b(Ljava/lang/Integer;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lx1/a$a;->a(Landroid/database/Cursor;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

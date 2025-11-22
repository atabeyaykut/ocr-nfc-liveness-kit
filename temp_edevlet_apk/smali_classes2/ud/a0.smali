.class public final Lud/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lud/a0$a;
    }
.end annotation


# static fields
.field public static final l:[C

.field public static final m:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lrc/r;

.field public c:Ljava/lang/String;

.field public d:Lrc/r$a;

.field public final e:Lrc/x$a;

.field public final f:Lrc/q$a;

.field public g:Lrc/t;

.field public final h:Z

.field public final i:Lrc/u$a;

.field public final j:Lrc/o$a;

.field public k:Lrc/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lud/a0;->l:[C

    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lud/a0;->m:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lrc/r;Ljava/lang/String;Lrc/q;Lrc/t;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lud/a0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lud/a0;->b:Lrc/r;

    .line 7
    .line 8
    iput-object p3, p0, Lud/a0;->c:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Lrc/x$a;

    .line 11
    .line 12
    invoke-direct {p1}, Lrc/x$a;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lud/a0;->e:Lrc/x$a;

    .line 16
    .line 17
    iput-object p5, p0, Lud/a0;->g:Lrc/t;

    .line 18
    .line 19
    iput-boolean p6, p0, Lud/a0;->h:Z

    .line 20
    .line 21
    if-eqz p4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p4}, Lrc/q;->u()Lrc/q$a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Lrc/q$a;

    .line 29
    .line 30
    invoke-direct {p1}, Lrc/q$a;-><init>()V

    .line 31
    .line 32
    .line 33
    :goto_0
    iput-object p1, p0, Lud/a0;->f:Lrc/q$a;

    .line 34
    .line 35
    if-eqz p7, :cond_1

    .line 36
    .line 37
    new-instance p1, Lrc/o$a;

    .line 38
    .line 39
    invoke-direct {p1}, Lrc/o$a;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lud/a0;->j:Lrc/o$a;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    if-eqz p8, :cond_3

    .line 46
    .line 47
    new-instance p1, Lrc/u$a;

    .line 48
    .line 49
    invoke-direct {p1}, Lrc/u$a;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lud/a0;->i:Lrc/u$a;

    .line 53
    .line 54
    sget-object p2, Lrc/u;->g:Lrc/t;

    .line 55
    .line 56
    const-string p3, "type"

    .line 57
    .line 58
    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p3, "multipart"

    .line 62
    .line 63
    iget-object p4, p2, Lrc/t;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {p4, p3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    if-eqz p3, :cond_2

    .line 70
    .line 71
    iput-object p2, p1, Lrc/u$a;->b:Lrc/t;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string p3, "multipart != "

    .line 77
    .line 78
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p2

    .line 98
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 26

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v11, p0

    .line 4
    .line 5
    iget-object v12, v11, Lud/a0;->j:Lrc/o$a;

    .line 6
    .line 7
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v0, "name"

    .line 11
    .line 12
    iget-object v13, v12, Lrc/o$a;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v14, v12, Lrc/o$a;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v15, Lrc/r;->l:Lrc/r$b;

    .line 22
    .line 23
    const/16 v17, 0x0

    .line 24
    .line 25
    const/16 v18, 0x0

    .line 26
    .line 27
    const-string v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    .line 28
    .line 29
    const/16 v20, 0x1

    .line 30
    .line 31
    const/16 v21, 0x0

    .line 32
    .line 33
    const/16 v22, 0x1

    .line 34
    .line 35
    const/16 v23, 0x0

    .line 36
    .line 37
    iget-object v9, v12, Lrc/o$a;->c:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    const/16 v25, 0x53

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v5, 0x1

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x1

    .line 46
    const/4 v8, 0x0

    .line 47
    const/16 v10, 0x53

    .line 48
    .line 49
    move-object v0, v15

    .line 50
    move-object/from16 v1, p1

    .line 51
    .line 52
    invoke-static/range {v0 .. v10}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    const-string v19, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    .line 60
    .line 61
    iget-object v0, v12, Lrc/o$a;->c:Ljava/nio/charset/Charset;

    .line 62
    .line 63
    move-object/from16 v16, p2

    .line 64
    .line 65
    move-object/from16 v24, v0

    .line 66
    .line 67
    invoke-static/range {v15 .. v25}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object v15, Lrc/r;->l:Lrc/r$b;

    .line 79
    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    const/16 v17, 0x0

    .line 83
    .line 84
    const-string v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    .line 85
    .line 86
    const/16 v19, 0x0

    .line 87
    .line 88
    const/16 v20, 0x0

    .line 89
    .line 90
    const/16 v21, 0x1

    .line 91
    .line 92
    const/16 v22, 0x0

    .line 93
    .line 94
    iget-object v9, v12, Lrc/o$a;->c:Ljava/nio/charset/Charset;

    .line 95
    .line 96
    const/16 v24, 0x5b

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    const/4 v3, 0x0

    .line 100
    const/4 v5, 0x0

    .line 101
    const/4 v6, 0x0

    .line 102
    const/4 v7, 0x1

    .line 103
    const/4 v8, 0x0

    .line 104
    const/16 v10, 0x5b

    .line 105
    .line 106
    move-object v0, v15

    .line 107
    move-object/from16 v1, p1

    .line 108
    .line 109
    invoke-static/range {v0 .. v10}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    const-string v18, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    .line 117
    .line 118
    iget-object v0, v12, Lrc/o$a;->c:Ljava/nio/charset/Charset;

    .line 119
    .line 120
    move-object v14, v15

    .line 121
    move-object/from16 v15, p2

    .line 122
    .line 123
    move-object/from16 v23, v0

    .line 124
    .line 125
    invoke-static/range {v14 .. v24}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "Content-Type"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    sget-object p1, Lrc/t;->f:Lrc/t$a;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lrc/t$a;->a(Ljava/lang/String;)Lrc/t;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lud/a0;->g:Lrc/t;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v1, "Malformed content type: "

    .line 25
    .line 26
    invoke-static {v1, p2}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_0
    iget-object v0, p0, Lud/a0;->f:Lrc/q$a;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2}, Lrc/q$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final c(Lrc/q;Lrc/a0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lud/a0;->i:Lrc/u$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "body"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string v2, "Content-Type"

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v1

    .line 22
    :goto_0
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v2, 0x0

    .line 29
    :goto_1
    if-eqz v2, :cond_5

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    const-string v1, "Content-Length"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_2
    if-nez v1, :cond_3

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    :cond_3
    if-eqz v3, :cond_4

    .line 43
    .line 44
    new-instance v1, Lrc/u$b;

    .line 45
    .line 46
    invoke-direct {v1, p1, p2}, Lrc/u$b;-><init>(Lrc/q;Lrc/a0;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v0, Lrc/u$a;->c:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string p2, "Unexpected header: Content-Length"

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string p2, "Unexpected header: Content-Type"

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v1, v0, Lud/a0;->c:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v12, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v3, v0, Lud/a0;->b:Lrc/r;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance v4, Lrc/r$a;

    .line 16
    .line 17
    invoke-direct {v4}, Lrc/r$a;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v3, v1}, Lrc/r$a;->c(Lrc/r;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-object v4, v12

    .line 25
    :goto_0
    iput-object v4, v0, Lud/a0;->d:Lrc/r$a;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    iput-object v12, v0, Lud/a0;->c:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, "Malformed URL. Base: "

    .line 37
    .line 38
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, ", Relative: "

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v3, v0, Lud/a0;->c:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_1
    :goto_1
    iget-object v13, v0, Lud/a0;->d:Lrc/r$a;

    .line 63
    .line 64
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    if-eqz p3, :cond_4

    .line 68
    .line 69
    const-string v1, "encodedName"

    .line 70
    .line 71
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v13, Lrc/r$a;->g:Ljava/util/ArrayList;

    .line 75
    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v1, v13, Lrc/r$a;->g:Ljava/util/ArrayList;

    .line 84
    .line 85
    :cond_2
    iget-object v14, v13, Lrc/r$a;->g:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-static {v14}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object v15, Lrc/r;->l:Lrc/r$b;

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    const/4 v4, 0x0

    .line 94
    const-string v5, " \"\'<>#&="

    .line 95
    .line 96
    const/4 v6, 0x1

    .line 97
    const/4 v7, 0x0

    .line 98
    const/4 v8, 0x1

    .line 99
    const/4 v9, 0x0

    .line 100
    const/4 v10, 0x0

    .line 101
    const/16 v11, 0xd3

    .line 102
    .line 103
    move-object v1, v15

    .line 104
    move-object/from16 v2, p1

    .line 105
    .line 106
    invoke-static/range {v1 .. v11}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    iget-object v13, v13, Lrc/r$a;->g:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-static {v13}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    if-eqz p2, :cond_3

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    const/4 v4, 0x0

    .line 122
    const-string v5, " \"\'<>#&="

    .line 123
    .line 124
    const/4 v6, 0x1

    .line 125
    const/4 v7, 0x0

    .line 126
    const/4 v8, 0x1

    .line 127
    const/4 v9, 0x0

    .line 128
    const/4 v10, 0x0

    .line 129
    const/16 v11, 0xd3

    .line 130
    .line 131
    move-object v1, v15

    .line 132
    move-object/from16 v2, p2

    .line 133
    .line 134
    invoke-static/range {v1 .. v11}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    :cond_3
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    const-string v1, "name"

    .line 143
    .line 144
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v13, Lrc/r$a;->g:Ljava/util/ArrayList;

    .line 148
    .line 149
    if-nez v1, :cond_5

    .line 150
    .line 151
    new-instance v1, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v1, v13, Lrc/r$a;->g:Ljava/util/ArrayList;

    .line 157
    .line 158
    :cond_5
    iget-object v14, v13, Lrc/r$a;->g:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-static {v14}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    sget-object v15, Lrc/r;->l:Lrc/r$b;

    .line 164
    .line 165
    const/4 v3, 0x0

    .line 166
    const/4 v4, 0x0

    .line 167
    const-string v5, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    .line 168
    .line 169
    const/4 v6, 0x0

    .line 170
    const/4 v7, 0x0

    .line 171
    const/4 v8, 0x1

    .line 172
    const/4 v9, 0x0

    .line 173
    const/4 v10, 0x0

    .line 174
    const/16 v11, 0xdb

    .line 175
    .line 176
    move-object v1, v15

    .line 177
    move-object/from16 v2, p1

    .line 178
    .line 179
    invoke-static/range {v1 .. v11}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    iget-object v13, v13, Lrc/r$a;->g:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-static {v13}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    if-eqz p2, :cond_6

    .line 192
    .line 193
    const/4 v3, 0x0

    .line 194
    const/4 v4, 0x0

    .line 195
    const-string v5, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    .line 196
    .line 197
    const/4 v6, 0x0

    .line 198
    const/4 v7, 0x0

    .line 199
    const/4 v8, 0x1

    .line 200
    const/4 v9, 0x0

    .line 201
    const/4 v10, 0x0

    .line 202
    const/16 v11, 0xdb

    .line 203
    .line 204
    move-object v1, v15

    .line 205
    move-object/from16 v2, p2

    .line 206
    .line 207
    invoke-static/range {v1 .. v11}, Lrc/r$b;->a(Lrc/r$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    :cond_6
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    :goto_2
    return-void
.end method

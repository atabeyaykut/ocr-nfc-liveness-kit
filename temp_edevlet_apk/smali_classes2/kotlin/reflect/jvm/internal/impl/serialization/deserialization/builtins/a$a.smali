.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Llb/c;Lbc/l;Lma/b0;Ljava/io/InputStream;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;
    .locals 6

    .line 1
    const-string p4, "fqName"

    .line 2
    .line 3
    invoke-static {p0, p4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "storageManager"

    .line 7
    .line 8
    invoke-static {p1, p4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p4, "module"

    .line 12
    .line 13
    invoke-static {p2, p4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    sget-object p4, Lhb/a;->f:Lhb/a;

    .line 17
    .line 18
    invoke-static {p3}, Lhb/a$a;->a(Ljava/io/InputStream;)Lhb/a;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    sget-object p4, Lhb/a;->f:Lhb/a;

    .line 23
    .line 24
    invoke-virtual {v5, p4}, Lib/a;->b(Lib/a;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Lmb/f;

    .line 32
    .line 33
    invoke-direct {v0}, Lmb/f;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lhb/b;->a(Lmb/f;)V

    .line 37
    .line 38
    .line 39
    sget-object v2, Lgb/l;->l:Lgb/l$a;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v3, Lmb/d;

    .line 45
    .line 46
    invoke-direct {v3, p3}, Lmb/d;-><init>(Ljava/io/InputStream;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v3, v0}, Lmb/r;->a(Lmb/d;Lmb/f;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lmb/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    :try_start_1
    invoke-virtual {v3, v2}, Lmb/d;->a(I)V
    :try_end_1
    .catch Lmb/j; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_2
    invoke-static {v0}, Lmb/b;->b(Lmb/p;)V

    .line 60
    .line 61
    .line 62
    check-cast v0, Lgb/l;

    .line 63
    .line 64
    move-object v4, v0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    iput-object v0, p0, Lmb/j;->a:Lmb/p;

    .line 68
    .line 69
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    move-object v4, v1

    .line 73
    :goto_0
    invoke-static {p3, v1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    .line 79
    .line 80
    move-object v0, p3

    .line 81
    move-object v1, p0

    .line 82
    move-object v2, p1

    .line 83
    move-object v3, p2

    .line 84
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;-><init>(Llb/c;Lbc/l;Lma/b0;Lgb/l;Lhb/a;)V

    .line 85
    .line 86
    .line 87
    return-object p3

    .line 88
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 89
    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string p2, "Kotlin built-in definition format version is not supported: expected "

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p2, ", actual "

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p2, ". Please update Kotlin"

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    :catchall_1
    move-exception p1

    .line 123
    invoke-static {p3, p0}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

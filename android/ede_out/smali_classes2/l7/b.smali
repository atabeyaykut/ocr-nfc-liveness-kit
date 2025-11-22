.class public final Ll7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll7/j<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ll7/p;

.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 8

    .line 1
    iput-object p1, p0, Ll7/b;->b:Ljava/lang/Class;

    .line 2
    .line 3
    iput-object p2, p0, Ll7/b;->c:Ljava/lang/reflect/Type;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string p1, "newInstance"

    .line 9
    .line 10
    const-class p2, Ljava/io/ObjectStreamClass;

    .line 11
    .line 12
    const-class v0, Ljava/lang/Class;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    :try_start_0
    const-string v4, "sun.misc.Unsafe"

    .line 18
    .line 19
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v5, "theUnsafe"

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const-string v6, "allocateInstance"

    .line 37
    .line 38
    new-array v7, v3, [Ljava/lang/Class;

    .line 39
    .line 40
    aput-object v0, v7, v2

    .line 41
    .line 42
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    new-instance v6, Ll7/l;

    .line 47
    .line 48
    invoke-direct {v6, v4, v5}, Ll7/l;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    const/4 v4, 0x2

    .line 53
    :try_start_1
    const-string v5, "getConstructorId"

    .line 54
    .line 55
    new-array v6, v3, [Ljava/lang/Class;

    .line 56
    .line 57
    aput-object v0, v6, v2

    .line 58
    .line 59
    invoke-virtual {p2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 64
    .line 65
    .line 66
    new-array v6, v3, [Ljava/lang/Object;

    .line 67
    .line 68
    const-class v7, Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v7, v6, v2

    .line 71
    .line 72
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    new-array v5, v4, [Ljava/lang/Class;

    .line 83
    .line 84
    aput-object v0, v5, v2

    .line 85
    .line 86
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 87
    .line 88
    aput-object v6, v5, v3

    .line 89
    .line 90
    invoke-virtual {p2, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 95
    .line 96
    .line 97
    new-instance v6, Ll7/m;

    .line 98
    .line 99
    invoke-direct {v6, v1, p2}, Ll7/m;-><init>(ILjava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_1
    :try_start_2
    const-class p2, Ljava/io/ObjectInputStream;

    .line 104
    .line 105
    new-array v1, v4, [Ljava/lang/Class;

    .line 106
    .line 107
    aput-object v0, v1, v2

    .line 108
    .line 109
    aput-object v0, v1, v3

    .line 110
    .line 111
    invoke-virtual {p2, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 116
    .line 117
    .line 118
    new-instance v6, Ll7/n;

    .line 119
    .line 120
    invoke-direct {v6, p1}, Ll7/n;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_2
    new-instance v6, Ll7/o;

    .line 125
    .line 126
    invoke-direct {v6}, Ll7/o;-><init>()V

    .line 127
    .line 128
    .line 129
    :goto_0
    iput-object v6, p0, Ll7/b;->a:Ll7/p;

    .line 130
    .line 131
    return-void
.end method


# virtual methods
.method public final h()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ll7/b;->a:Ll7/p;

    iget-object v1, p0, Ll7/b;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ll7/p;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to invoke no-args constructor for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ll7/b;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Registering an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

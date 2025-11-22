.class public abstract Lio/realm/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lio/realm/internal/core/NativeRealmAny;

.field public final b:Lio/realm/h0$a;


# direct methods
.method public constructor <init>(Lio/realm/h0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/k0;->b:Lio/realm/h0$a;

    return-void
.end method

.method public constructor <init>(Lio/realm/h0$a;Lio/realm/internal/core/NativeRealmAny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/k0;->b:Lio/realm/h0$a;

    iput-object p2, p0, Lio/realm/k0;->a:Lio/realm/internal/core/NativeRealmAny;

    return-void
.end method

.method public static b(Lio/realm/a;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/k0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAny;->getType()Lio/realm/h0$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/ClassCastException;

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Couldn\'t cast to "

    .line 17
    .line 18
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :pswitch_0
    new-instance p0, Lio/realm/z;

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lio/realm/z;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_1
    instance-of v0, p0, Lio/realm/g0;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    :try_start_0
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 43
    .line 44
    iget-object v1, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 45
    .line 46
    iget-object v1, v1, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Lio/realm/internal/core/NativeRealmAny;->getModelClass(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/o;)Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lio/realm/u0;

    .line 53
    .line 54
    invoke-direct {v1, p0, p1, v0}, Lio/realm/u0;-><init>(Lio/realm/a;Lio/realm/internal/core/NativeRealmAny;Ljava/lang/Class;)V
    :try_end_0
    .catch Lio/realm/exceptions/RealmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :catch_0
    :cond_0
    new-instance v0, Lio/realm/o;

    .line 59
    .line 60
    invoke-direct {v0, p0, p1}, Lio/realm/o;-><init>(Lio/realm/a;Lio/realm/internal/core/NativeRealmAny;)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :pswitch_2
    new-instance p0, Lio/realm/d1;

    .line 65
    .line 66
    invoke-direct {p0, p1}, Lio/realm/d1;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    .line 67
    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_3
    new-instance p0, Lio/realm/a0;

    .line 71
    .line 72
    invoke-direct {p0, p1}, Lio/realm/a0;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :pswitch_4
    new-instance p0, Lio/realm/k;

    .line 77
    .line 78
    invoke-direct {p0, p1}, Lio/realm/k;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    .line 79
    .line 80
    .line 81
    return-object p0

    .line 82
    :pswitch_5
    new-instance p0, Lio/realm/m;

    .line 83
    .line 84
    invoke-direct {p0, p1}, Lio/realm/m;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    .line 85
    .line 86
    .line 87
    return-object p0

    .line 88
    :pswitch_6
    new-instance p0, Lio/realm/r;

    .line 89
    .line 90
    invoke-direct {p0, p1}, Lio/realm/r;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    .line 91
    .line 92
    .line 93
    return-object p0

    .line 94
    :pswitch_7
    new-instance p0, Lio/realm/i;

    .line 95
    .line 96
    invoke-direct {p0, p1}, Lio/realm/i;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    :pswitch_8
    new-instance p0, Lio/realm/d;

    .line 101
    .line 102
    invoke-direct {p0, p1}, Lio/realm/d;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    .line 103
    .line 104
    .line 105
    return-object p0

    .line 106
    :pswitch_9
    new-instance p0, Lio/realm/c1;

    .line 107
    .line 108
    invoke-direct {p0, p1}, Lio/realm/c1;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    .line 109
    .line 110
    .line 111
    return-object p0

    .line 112
    :pswitch_a
    new-instance p0, Lio/realm/f;

    .line 113
    .line 114
    invoke-direct {p0, p1}, Lio/realm/f;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    .line 115
    .line 116
    .line 117
    return-object p0

    .line 118
    :pswitch_b
    new-instance p0, Lio/realm/w;

    .line 119
    .line 120
    invoke-direct {p0, p1}, Lio/realm/w;-><init>(Lio/realm/internal/core/NativeRealmAny;)V

    .line 121
    .line 122
    .line 123
    return-object p0

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract a()Lio/realm/internal/core/NativeRealmAny;
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/k0;->b:Lio/realm/h0$a;

    iget-object v0, v0, Lio/realm/h0$a;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract d(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

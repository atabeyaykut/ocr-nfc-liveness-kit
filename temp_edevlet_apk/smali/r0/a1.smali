.class public final Lr0/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Ll9/g;

    .line 4
    .line 5
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    new-instance v2, Ll9/g;

    .line 8
    .line 9
    invoke-direct {v2, v1, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 16
    .line 17
    new-instance v2, Ll9/g;

    .line 18
    .line 19
    const-class v3, Ljava/lang/Byte;

    .line 20
    .line 21
    invoke-direct {v2, v1, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    aput-object v2, v0, v1

    .line 26
    .line 27
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    new-instance v2, Ll9/g;

    .line 30
    .line 31
    const-class v3, Ljava/lang/Character;

    .line 32
    .line 33
    invoke-direct {v2, v1, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    aput-object v2, v0, v1

    .line 38
    .line 39
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    new-instance v2, Ll9/g;

    .line 42
    .line 43
    const-class v3, Ljava/lang/Double;

    .line 44
    .line 45
    invoke-direct {v2, v1, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x3

    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 52
    .line 53
    new-instance v2, Ll9/g;

    .line 54
    .line 55
    const-class v3, Ljava/lang/Float;

    .line 56
    .line 57
    invoke-direct {v2, v1, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x4

    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 64
    .line 65
    new-instance v2, Ll9/g;

    .line 66
    .line 67
    const-class v3, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-direct {v2, v1, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const/4 v1, 0x5

    .line 73
    aput-object v2, v0, v1

    .line 74
    .line 75
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 76
    .line 77
    new-instance v2, Ll9/g;

    .line 78
    .line 79
    const-class v3, Ljava/lang/Long;

    .line 80
    .line 81
    invoke-direct {v2, v1, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const/4 v1, 0x6

    .line 85
    aput-object v2, v0, v1

    .line 86
    .line 87
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 88
    .line 89
    new-instance v2, Ll9/g;

    .line 90
    .line 91
    const-class v3, Ljava/lang/Short;

    .line 92
    .line 93
    invoke-direct {v2, v1, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    const/4 v1, 0x7

    .line 97
    aput-object v2, v0, v1

    .line 98
    .line 99
    invoke-static {v0}, Lm9/e0;->R0([Ll9/g;)Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lr0/a1;->a:Ljava/util/Map;

    .line 104
    .line 105
    return-void
.end method

.method public static final a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr0/a1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "First argument has to be primitive type"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

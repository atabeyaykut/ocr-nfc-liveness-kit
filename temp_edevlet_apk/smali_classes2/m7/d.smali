.class public final Lm7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj7/v;


# instance fields
.field public final a:Ll7/c;


# direct methods
.method public constructor <init>(Ll7/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/d;->a:Ll7/c;

    return-void
.end method

.method public static a(Ll7/c;Lj7/h;Lp7/a;Lk7/a;)Lj7/u;
    .locals 3

    .line 1
    invoke-interface {p3}, Lk7/a;->value()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp7/a;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lp7/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ll7/c;->a(Lp7/a;)Ll7/j;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ll7/j;->h()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    instance-of v0, p0, Lj7/u;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    check-cast p0, Lj7/u;

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    instance-of v0, p0, Lj7/v;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    check-cast p0, Lj7/v;

    .line 30
    .line 31
    invoke-interface {p0, p1, p2}, Lj7/v;->b(Lj7/h;Lp7/a;)Lj7/u;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    instance-of v0, p0, Lj7/r;

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    instance-of v1, p0, Lj7/k;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v0, "Invalid attempt to bind an instance of "

    .line 50
    .line 51
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p0, " as a @JsonAdapter for "

    .line 66
    .line 67
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lp7/a;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    .line 78
    .line 79
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    move-object v0, p0

    .line 94
    check-cast v0, Lj7/r;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    move-object v0, v1

    .line 98
    :goto_1
    instance-of v2, p0, Lj7/k;

    .line 99
    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    move-object v1, p0

    .line 103
    check-cast v1, Lj7/k;

    .line 104
    .line 105
    :cond_5
    new-instance p0, Lm7/m;

    .line 106
    .line 107
    invoke-direct {p0, v0, v1, p1, p2}, Lm7/m;-><init>(Lj7/r;Lj7/k;Lj7/h;Lp7/a;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    if-eqz p0, :cond_6

    .line 111
    .line 112
    invoke-interface {p3}, Lk7/a;->nullSafe()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    new-instance p1, Lj7/t;

    .line 119
    .line 120
    invoke-direct {p1, p0}, Lj7/t;-><init>(Lj7/u;)V

    .line 121
    .line 122
    .line 123
    move-object p0, p1

    .line 124
    :cond_6
    return-object p0
.end method


# virtual methods
.method public final b(Lj7/h;Lp7/a;)Lj7/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj7/h;",
            "Lp7/a<",
            "TT;>;)",
            "Lj7/u<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lp7/a;->a:Ljava/lang/Class;

    .line 2
    .line 3
    const-class v1, Lk7/a;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lk7/a;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_0
    iget-object v1, p0, Lm7/d;->a:Ll7/c;

    .line 16
    .line 17
    invoke-static {v1, p1, p2, v0}, Lm7/d;->a(Ll7/c;Lj7/h;Lp7/a;Lk7/a;)Lj7/u;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

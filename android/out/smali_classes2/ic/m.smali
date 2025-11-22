.class public final Lic/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lic/f;


# static fields
.field public static final a:Lic/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/m;

    invoke-direct {v0}, Lic/m;-><init>()V

    sput-object v0, Lic/m;->a:Lic/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lma/u;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lic/f$a;->a(Lic/f;Lma/u;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lma/u;)Z
    .locals 5

    .line 1
    const-string v0, "functionDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lma/a;->g()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lma/a1;

    .line 16
    .line 17
    sget-object v0, Lja/m;->d:Lja/m$b;

    .line 18
    .line 19
    const-string v1, "secondParameter"

    .line 20
    .line 21
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lsb/b;->j(Lma/j;)Lma/b0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v0, Lja/o$a;->Q:Llb/b;

    .line 32
    .line 33
    invoke-static {v1, v0}, Lma/t;->a(Lma/b0;Llb/b;)Lma/e;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget-object v1, Lcc/a1;->b:Lcc/a1$a;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-object v1, Lcc/a1;->c:Lcc/a1;

    .line 47
    .line 48
    new-instance v2, Lcc/s0;

    .line 49
    .line 50
    invoke-interface {v0}, Lma/g;->i()Lcc/c1;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-interface {v3}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const-string v4, "kPropertyClass.typeConstructor.parameters"

    .line 59
    .line 60
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "kPropertyClass.typeConstructor.parameters.single()"

    .line 68
    .line 69
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast v3, Lma/w0;

    .line 73
    .line 74
    invoke-direct {v2, v3}, Lcc/s0;-><init>(Lma/w0;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v2}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v1, v0, v2}, Lcc/f0;->e(Lcc/a1;Lma/e;Ljava/util/List;)Lcc/m0;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_0
    if-eqz v0, :cond_1

    .line 86
    .line 87
    invoke-interface {p1}, Lma/z0;->getType()Lcc/e0;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v1, "secondParameter.type"

    .line 92
    .line 93
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcc/q1;->i(Lcc/e0;)Lcc/s1;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v0, p1}, Lc5/y;->u(Lcc/e0;Lcc/e0;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    const/4 p1, 0x0

    .line 106
    :goto_1
    return p1
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "second parameter must be of type KProperty<*> or its supertype"

    return-object v0
.end method

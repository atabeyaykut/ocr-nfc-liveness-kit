.class public final Lic/s$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lma/u;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lic/s$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/s$b;

    invoke-direct {v0}, Lic/s$b;-><init>()V

    sput-object v0, Lic/s$b;->a:Lic/s$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lma/u;

    .line 2
    .line 3
    const-string v0, "$this$$receiver"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lic/s;->a:Lic/s;

    .line 9
    .line 10
    invoke-interface {p1}, Lma/u;->b()Lma/j;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "containingDeclaration"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    instance-of v1, v0, Lma/e;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast v0, Lma/e;

    .line 26
    .line 27
    sget-object v1, Lja/k;->e:Llb/f;

    .line 28
    .line 29
    sget-object v1, Lja/o$a;->a:Llb/d;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lja/k;->c(Lma/g;Llb/d;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-nez v0, :cond_6

    .line 41
    .line 42
    invoke-interface {p1}, Lma/u;->e()Ljava/util/Collection;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "overriddenDescriptors"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    check-cast p1, Ljava/lang/Iterable;

    .line 52
    .line 53
    move-object v0, p1

    .line 54
    check-cast v0, Ljava/util/Collection;

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lma/u;

    .line 78
    .line 79
    invoke-interface {v0}, Lma/u;->b()Lma/j;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "it.containingDeclaration"

    .line 84
    .line 85
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    instance-of v1, v0, Lma/e;

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    check-cast v0, Lma/e;

    .line 93
    .line 94
    sget-object v1, Lja/k;->e:Llb/f;

    .line 95
    .line 96
    sget-object v1, Lja/o$a;->a:Llb/d;

    .line 97
    .line 98
    invoke-static {v0, v1}, Lja/k;->c(Lma/g;Llb/d;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    const/4 v0, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const/4 v0, 0x0

    .line 107
    :goto_1
    if-eqz v0, :cond_2

    .line 108
    .line 109
    const/4 p1, 0x1

    .line 110
    goto :goto_3

    .line 111
    :cond_4
    :goto_2
    const/4 p1, 0x0

    .line 112
    :goto_3
    if-eqz p1, :cond_5

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    const/4 v2, 0x0

    .line 116
    :cond_6
    :goto_4
    if-nez v2, :cond_7

    .line 117
    .line 118
    const-string p1, "must override \'\'equals()\'\' in Any"

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_7
    const/4 p1, 0x0

    .line 122
    :goto_5
    return-object p1
.end method

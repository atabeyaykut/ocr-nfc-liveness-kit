.class public final Lcom/google/crypto/tink/shaded/protobuf/g0$a;
.super Lcom/google/crypto/tink/shaded/protobuf/g0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/g0$a;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/g0;-><init>()V

    return-void
.end method

.method public static d(IJLjava/lang/Object;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    instance-of v1, v0, Lcom/google/crypto/tink/shaded/protobuf/f0;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/e0;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/e0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    instance-of v1, v0, Lcom/google/crypto/tink/shaded/protobuf/z0;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    instance-of v1, v0, Lcom/google/crypto/tink/shaded/protobuf/z$c;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z$c;

    .line 32
    .line 33
    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/z$c;->F(I)Lcom/google/crypto/tink/shaded/protobuf/z$c;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    move-object v0, p0

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/g0$a;->c:Ljava/lang/Class;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    add-int/2addr v2, p0

    .line 64
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    :goto_1
    move-object v0, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    instance-of v1, v0, Lcom/google/crypto/tink/shaded/protobuf/m1;

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/e0;

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    add-int/2addr v2, p0

    .line 83
    invoke-direct {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/e0;-><init>(I)V

    .line 84
    .line 85
    .line 86
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/m1;

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/e0;->addAll(Ljava/util/Collection;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :goto_2
    invoke-static {p1, p2, p3, v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    instance-of v1, v0, Lcom/google/crypto/tink/shaded/protobuf/z0;

    .line 97
    .line 98
    if-eqz v1, :cond_5

    .line 99
    .line 100
    instance-of v1, v0, Lcom/google/crypto/tink/shaded/protobuf/z$c;

    .line 101
    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    move-object v1, v0

    .line 105
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/z$c;

    .line 106
    .line 107
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/z$c;->o0()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_5

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    add-int/2addr v0, p0

    .line 118
    invoke-interface {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/z$c;->F(I)Lcom/google/crypto/tink/shaded/protobuf/z$c;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    goto :goto_0

    .line 123
    :cond_5
    :goto_3
    return-object v0
.end method


# virtual methods
.method public final a(JLjava/lang/Object;)V
    .locals 3

    invoke-static {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Lcom/google/crypto/tink/shaded/protobuf/f0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/f0;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->p()Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/g0$a;->c:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    instance-of v1, v0, Lcom/google/crypto/tink/shaded/protobuf/z0;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/google/crypto/tink/shaded/protobuf/z$c;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z$c;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/z$c;->o0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/z$c;->B()V

    :cond_2
    return-void

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p1, p2, p3, v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {p1, p2, p4}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    check-cast p4, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/g0$a;->d(IJLjava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    if-lez v1, :cond_1

    .line 31
    .line 32
    move-object p4, v0

    .line 33
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final c(JLjava/lang/Object;)Ljava/util/List;
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/g0$a;->d(IJLjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

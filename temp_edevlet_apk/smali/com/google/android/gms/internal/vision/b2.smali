.class public final Lcom/google/android/gms/internal/vision/b2;
.super Lcom/google/android/gms/internal/vision/z1;
.source "SourceFile"


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

    sput-object v0, Lcom/google/android/gms/internal/vision/b2;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/z1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    instance-of v2, v1, Lcom/google/android/gms/internal/vision/a2;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    new-instance v1, Lcom/google/android/gms/internal/vision/x1;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/vision/x1;-><init>(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    instance-of v2, v1, Lcom/google/android/gms/internal/vision/y2;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    instance-of v2, v1, Lcom/google/android/gms/internal/vision/r1;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    check-cast v1, Lcom/google/android/gms/internal/vision/r1;

    .line 42
    .line 43
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/vision/r1;->f(I)Lcom/google/android/gms/internal/vision/r1;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sget-object v3, Lcom/google/android/gms/internal/vision/b2;->c:Ljava/lang/Class;

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    add-int/2addr v3, v0

    .line 73
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    instance-of v2, v1, Lcom/google/android/gms/internal/vision/s3;

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    new-instance v2, Lcom/google/android/gms/internal/vision/x1;

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    add-int/2addr v3, v0

    .line 91
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/vision/x1;-><init>(I)V

    .line 92
    .line 93
    .line 94
    check-cast v1, Lcom/google/android/gms/internal/vision/s3;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/x1;->addAll(Ljava/util/Collection;)Z

    .line 97
    .line 98
    .line 99
    :goto_0
    move-object v1, v2

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    instance-of v2, v1, Lcom/google/android/gms/internal/vision/y2;

    .line 102
    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    instance-of v2, v1, Lcom/google/android/gms/internal/vision/r1;

    .line 106
    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    move-object v2, v1

    .line 110
    check-cast v2, Lcom/google/android/gms/internal/vision/r1;

    .line 111
    .line 112
    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/r1;->a()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_5

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    add-int/2addr v1, v0

    .line 123
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/vision/r1;->f(I)Lcom/google/android/gms/internal/vision/r1;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :goto_1
    move-object v1, v0

    .line 128
    :goto_2
    invoke-static {p1, p2, p3, v1}, Lcom/google/android/gms/internal/vision/t3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-lez v0, :cond_6

    .line 140
    .line 141
    if-lez v2, :cond_6

    .line 142
    .line 143
    invoke-interface {v1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    .line 145
    .line 146
    :cond_6
    if-lez v0, :cond_7

    .line 147
    .line 148
    move-object p4, v1

    .line 149
    :cond_7
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/vision/t3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final b(JLjava/lang/Object;)V
    .locals 3

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Lcom/google/android/gms/internal/vision/a2;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/vision/a2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/a2;->e()Lcom/google/android/gms/internal/vision/a2;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/vision/b2;->c:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    instance-of v1, v0, Lcom/google/android/gms/internal/vision/y2;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/google/android/gms/internal/vision/r1;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/google/android/gms/internal/vision/r1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/r1;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/r1;->b()V

    :cond_2
    return-void

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/vision/t3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

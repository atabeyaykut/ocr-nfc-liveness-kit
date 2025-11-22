.class public final Lsa/a0;
.super Lsa/z;
.source "SourceFile"

# interfaces
.implements Lcb/q;


# instance fields
.field public final a:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    const-string v0, "member"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lsa/z;-><init>()V

    iput-object p1, p0, Lsa/a0;->a:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final K()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lsa/a0;->a:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Lsa/d;->e(Ljava/lang/Class;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Lsa/w;

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Enum;

    .line 23
    .line 24
    invoke-direct {v2, v1, v0}, Lsa/w;-><init>(Llb/f;Ljava/lang/Enum;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    move-object v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    instance-of v2, v0, Ljava/lang/annotation/Annotation;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    new-instance v2, Lsa/g;

    .line 34
    .line 35
    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 36
    .line 37
    invoke-direct {v2, v1, v0}, Lsa/g;-><init>(Llb/f;Ljava/lang/annotation/Annotation;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    instance-of v2, v0, [Ljava/lang/Object;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    new-instance v2, Lsa/h;

    .line 46
    .line 47
    check-cast v0, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-direct {v2, v1, v0}, Lsa/h;-><init>(Llb/f;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    instance-of v2, v0, Ljava/lang/Class;

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    new-instance v2, Lsa/s;

    .line 58
    .line 59
    check-cast v0, Ljava/lang/Class;

    .line 60
    .line 61
    invoke-direct {v2, v1, v0}, Lsa/s;-><init>(Llb/f;Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    new-instance v2, Lsa/y;

    .line 66
    .line 67
    invoke-direct {v2, v0, v1}, Lsa/y;-><init>(Ljava/lang/Object;Llb/f;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/4 v0, 0x0

    .line 76
    :goto_2
    return v0
.end method

.method public final O()Ljava/lang/reflect/Member;
    .locals 1

    iget-object v0, p0, Lsa/a0;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcb/z;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsa/a0;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "member.genericParameterTypes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    const-string v3, "member.parameterAnnotations"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lsa/z;->P([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeParameters()Ljava/util/ArrayList;
    .locals 6

    iget-object v0, p0, Lsa/a0;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const-string v1, "member.typeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Lsa/f0;

    invoke-direct {v5, v4}, Lsa/f0;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final h()Lsa/e0;
    .locals 4

    .line 1
    iget-object v0, p0, Lsa/a0;->a:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "member.genericReturnType"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    instance-of v1, v0, Ljava/lang/Class;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Ljava/lang/Class;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    new-instance v0, Lsa/c0;

    .line 26
    .line 27
    invoke-direct {v0, v2}, Lsa/c0;-><init>(Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    move-object v1, v0

    .line 38
    check-cast v1, Ljava/lang/Class;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    new-instance v1, Lsa/h0;

    .line 52
    .line 53
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lsa/h0;-><init>(Ljava/lang/reflect/WildcardType;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance v1, Lsa/t;

    .line 60
    .line 61
    invoke-direct {v1, v0}, Lsa/t;-><init>(Ljava/lang/reflect/Type;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    :goto_0
    new-instance v1, Lsa/i;

    .line 66
    .line 67
    invoke-direct {v1, v0}, Lsa/i;-><init>(Ljava/lang/reflect/Type;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    move-object v0, v1

    .line 71
    :goto_2
    return-object v0
.end method

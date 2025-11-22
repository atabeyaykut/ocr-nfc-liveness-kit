.class public final Lsa/x;
.super Lsa/z;
.source "SourceFile"

# interfaces
.implements Lcb/n;


# instance fields
.field public final a:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    const-string v0, "member"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lsa/z;-><init>()V

    iput-object p1, p0, Lsa/x;->a:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 1

    iget-object v0, p0, Lsa/x;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v0

    return v0
.end method

.method public final N()V
    .locals 0

    return-void
.end method

.method public final O()Ljava/lang/reflect/Member;
    .locals 1

    iget-object v0, p0, Lsa/x;->a:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final getType()Lcb/w;
    .locals 4

    .line 1
    iget-object v0, p0, Lsa/x;->a:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "member.genericType"

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

.class public final Ll8/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll8/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;Ljava/util/Set;Ll8/b0;)Ll8/p;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ll8/b0;",
            ")",
            "Ll8/p<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static/range {p1 .. p1}, Ll8/d0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_e

    :cond_1
    invoke-static {v1}, Lm8/a;->d(Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 1
    const-class v3, Ljava/lang/Boolean;

    if-eq v1, v3, :cond_3

    const-class v3, Ljava/lang/Byte;

    if-eq v1, v3, :cond_3

    const-class v3, Ljava/lang/Character;

    if-eq v1, v3, :cond_3

    const-class v3, Ljava/lang/Double;

    if-eq v1, v3, :cond_3

    const-class v3, Ljava/lang/Float;

    if-eq v1, v3, :cond_3

    const-class v3, Ljava/lang/Integer;

    if-eq v1, v3, :cond_3

    const-class v3, Ljava/lang/Long;

    if-eq v1, v3, :cond_3

    const-class v3, Ljava/lang/Short;

    if-eq v1, v3, :cond_3

    const-class v3, Ljava/lang/String;

    if-eq v1, v3, :cond_3

    if-ne v1, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    .line 2
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Platform "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Lm8/a;->g(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires explicit JsonAdapter to be registered"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    return-object v2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot serialize non-static nested class "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "newInstance"

    .line 3
    const-class v7, Ljava/io/ObjectStreamClass;

    const-class v8, Ljava/lang/Class;

    :try_start_0
    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v10, Ll8/b;

    invoke-direct {v10, v9, v1}, Ll8/b;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    :try_start_1
    const-string v9, "sun.misc.Unsafe"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "theUnsafe"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "allocateInstance"

    new-array v12, v5, [Ljava/lang/Class;

    aput-object v8, v12, v4

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-instance v11, Ll8/c;

    invoke-direct {v11, v9, v10, v1}, Ll8/c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move-object v10, v11

    goto :goto_5

    :catch_1
    const/4 v9, 0x2

    :try_start_2
    const-string v10, "getConstructorId"

    new-array v11, v5, [Ljava/lang/Class;

    aput-object v8, v11, v4

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v6, v11, v4

    invoke-virtual {v10, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-array v11, v9, [Ljava/lang/Class;

    aput-object v8, v11, v4

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v5

    invoke-virtual {v7, v3, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v11, Ll8/d;

    invoke-direct {v11, v7, v1, v10}, Ll8/d;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;I)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    :try_start_3
    const-class v7, Ljava/io/ObjectInputStream;

    new-array v9, v9, [Ljava/lang/Class;

    aput-object v8, v9, v4

    aput-object v8, v9, v5

    invoke-virtual {v7, v3, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v10, Ll8/e;

    invoke-direct {v10, v3, v1}, Ll8/e;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 4
    :goto_5
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    :goto_6
    if-eq v0, v6, :cond_14

    .line 5
    invoke-static {v0}, Ll8/d0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lm8/a;->d(Ljava/lang/Class;)Z

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v9, :cond_13

    aget-object v12, v8, v11

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    .line 6
    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_8

    :cond_9
    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v13

    if-nez v13, :cond_a

    if-nez v7, :cond_b

    :cond_a
    const/4 v13, 0x1

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v13, 0x0

    :goto_9
    if-nez v13, :cond_c

    move-object/from16 v4, p3

    move-object/from16 p1, v3

    goto/16 :goto_d

    .line 7
    :cond_c
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-static {v0, v3, v13}, Lm8/a;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v13

    .line 8
    invoke-interface {v12}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v14

    .line 9
    array-length v15, v14

    move-object/from16 v16, v2

    :goto_a
    if-ge v4, v15, :cond_f

    aget-object v2, v14, v4

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 p1, v3

    const-class v3, Ll8/t;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v16, :cond_d

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_b

    :cond_d
    move-object/from16 v3, v16

    :goto_b
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v3

    :cond_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, p1

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 p1, v3

    if-eqz v16, :cond_10

    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    goto :goto_c

    :cond_10
    sget-object v2, Lm8/a;->a:Ljava/util/Set;

    .line 10
    :goto_c
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-virtual {v4, v13, v2, v3}, Ll8/b0;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Ll8/p;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-class v13, Ll8/k;

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Ll8/k;

    if-eqz v13, :cond_11

    invoke-interface {v13}, Ll8/k;->name()Ljava/lang/String;

    move-result-object v3

    :cond_11
    new-instance v13, Ll8/g$b;

    invoke-direct {v13, v3, v12, v2}, Ll8/g$b;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;Ll8/p;)V

    invoke-virtual {v1, v3, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll8/g$b;

    if-nez v2, :cond_12

    :goto_d
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Conflicting fields:\n    "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Ll8/g$b;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object/from16 v4, p3

    .line 11
    invoke-static {v0}, Ll8/d0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lm8/a;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_6

    .line 12
    :cond_14
    new-instance v0, Ll8/g;

    invoke-direct {v0, v10, v1}, Ll8/g;-><init>(Ll8/f;Ljava/util/TreeMap;)V

    .line 13
    new-instance v1, Ll8/m;

    invoke-direct {v1, v0}, Ll8/m;-><init>(Ll8/p;)V

    return-object v1

    .line 14
    :catch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot construct instances of "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lm8/a;->f(Ljava/lang/reflect/InvocationTargetException;)V

    const/4 v1, 0x0

    throw v1

    :catch_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 15
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot serialize abstract class "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot serialize local class "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot serialize anonymous class "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_e
    move-object v1, v2

    return-object v1
.end method

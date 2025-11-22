.class public final Lzb/a;
.super Lxb/a;
.source "SourceFile"


# static fields
.field public static final m:Lzb/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzb/a;

    invoke-direct {v0}, Lzb/a;-><init>()V

    sput-object v0, Lzb/a;->m:Lzb/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    new-instance v1, Lmb/f;

    .line 2
    .line 3
    invoke-direct {v1}, Lmb/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Lhb/b;->a(Lmb/f;)V

    .line 7
    .line 8
    .line 9
    sget-object v2, Lhb/b;->a:Lmb/h$e;

    .line 10
    .line 11
    const-string v0, "packageFqName"

    .line 12
    .line 13
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v3, Lhb/b;->c:Lmb/h$e;

    .line 17
    .line 18
    const-string v0, "constructorAnnotation"

    .line 19
    .line 20
    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v4, Lhb/b;->b:Lmb/h$e;

    .line 24
    .line 25
    const-string v0, "classAnnotation"

    .line 26
    .line 27
    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v5, Lhb/b;->d:Lmb/h$e;

    .line 31
    .line 32
    const-string v0, "functionAnnotation"

    .line 33
    .line 34
    invoke-static {v5, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v6, Lhb/b;->e:Lmb/h$e;

    .line 38
    .line 39
    const-string v0, "propertyAnnotation"

    .line 40
    .line 41
    invoke-static {v6, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v7, Lhb/b;->f:Lmb/h$e;

    .line 45
    .line 46
    const-string v0, "propertyGetterAnnotation"

    .line 47
    .line 48
    invoke-static {v7, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v8, Lhb/b;->g:Lmb/h$e;

    .line 52
    .line 53
    const-string v0, "propertySetterAnnotation"

    .line 54
    .line 55
    invoke-static {v8, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object v9, Lhb/b;->i:Lmb/h$e;

    .line 59
    .line 60
    const-string v0, "enumEntryAnnotation"

    .line 61
    .line 62
    invoke-static {v9, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v10, Lhb/b;->h:Lmb/h$e;

    .line 66
    .line 67
    const-string v0, "compileTimeValue"

    .line 68
    .line 69
    invoke-static {v10, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v11, Lhb/b;->j:Lmb/h$e;

    .line 73
    .line 74
    const-string v0, "parameterAnnotation"

    .line 75
    .line 76
    invoke-static {v11, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v12, Lhb/b;->k:Lmb/h$e;

    .line 80
    .line 81
    const-string v0, "typeAnnotation"

    .line 82
    .line 83
    invoke-static {v12, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v13, Lhb/b;->l:Lmb/h$e;

    .line 87
    .line 88
    const-string v0, "typeParameterAnnotation"

    .line 89
    .line 90
    invoke-static {v13, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move-object v0, p0

    .line 94
    invoke-direct/range {v0 .. v13}, Lxb/a;-><init>(Lmb/f;Lmb/h$e;Lmb/h$e;Lmb/h$e;Lmb/h$e;Lmb/h$e;Lmb/h$e;Lmb/h$e;Lmb/h$e;Lmb/h$e;Lmb/h$e;Lmb/h$e;Lmb/h$e;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public static a(Llb/c;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Llb/c;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0x2e

    .line 16
    .line 17
    const/16 v3, 0x2f

    .line 18
    .line 19
    invoke-static {v1, v2, v3}, Lmc/j;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Llb/c;->d()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string p0, "default-package"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Llb/c;->f()Llb/f;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Llb/f;->o()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string v1, "fqName.shortName().asString()"

    .line 47
    .line 48
    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    const-string v1, ".kotlin_builtins"

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

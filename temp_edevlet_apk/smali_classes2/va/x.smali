.class public final Lva/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llb/c;

.field public static final b:Llb/f;

.field public static final c:Llb/c;

.field public static final d:Llb/c;

.field public static final e:Llb/c;

.field public static final f:Llb/c;

.field public static final g:Llb/c;

.field public static final h:Llb/c;

.field public static final i:Llb/c;

.field public static final j:Llb/c;

.field public static final k:Llb/c;

.field public static final l:Llb/c;

.field public static final m:Llb/c;

.field public static final n:Llb/c;

.field public static final o:Llb/c;

.field public static final p:Llb/c;

.field public static final q:Llb/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Llb/c;

    const-string v1, "kotlin.Metadata"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->a:Llb/c;

    invoke-static {v0}, Ltb/b;->c(Llb/c;)Ltb/b;

    move-result-object v0

    invoke-virtual {v0}, Ltb/b;->e()Ljava/lang/String;

    const-string v0, "value"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v0

    sput-object v0, Lva/x;->b:Llb/f;

    new-instance v0, Llb/c;

    const-class v1, Ljava/lang/annotation/Target;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->c:Llb/c;

    new-instance v0, Llb/c;

    const-class v1, Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    new-instance v0, Llb/c;

    const-class v1, Ljava/lang/annotation/Retention;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->d:Llb/c;

    new-instance v0, Llb/c;

    const-class v1, Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    new-instance v0, Llb/c;

    const-class v1, Ljava/lang/Deprecated;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->e:Llb/c;

    new-instance v0, Llb/c;

    const-class v1, Ljava/lang/annotation/Documented;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->f:Llb/c;

    new-instance v0, Llb/c;

    const-string v1, "java.lang.annotation.Repeatable"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->g:Llb/c;

    new-instance v0, Llb/c;

    const-string v1, "org.jetbrains.annotations.NotNull"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->h:Llb/c;

    new-instance v0, Llb/c;

    const-string v1, "org.jetbrains.annotations.Nullable"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->i:Llb/c;

    new-instance v0, Llb/c;

    const-string v1, "org.jetbrains.annotations.Mutable"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->j:Llb/c;

    new-instance v0, Llb/c;

    const-string v1, "org.jetbrains.annotations.ReadOnly"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->k:Llb/c;

    new-instance v0, Llb/c;

    const-string v1, "kotlin.annotations.jvm.ReadOnly"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->l:Llb/c;

    new-instance v0, Llb/c;

    const-string v1, "kotlin.annotations.jvm.Mutable"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->m:Llb/c;

    new-instance v0, Llb/c;

    const-string v1, "kotlin.jvm.PurelyImplements"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->n:Llb/c;

    new-instance v0, Llb/c;

    const-string v1, "kotlin.jvm.internal"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    new-instance v0, Llb/c;

    const-string v1, "kotlin.jvm.internal.SerializedIr"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->o:Llb/c;

    invoke-static {v0}, Ltb/b;->c(Llb/c;)Ltb/b;

    move-result-object v0

    invoke-virtual {v0}, Ltb/b;->e()Ljava/lang/String;

    new-instance v0, Llb/c;

    const-string v1, "kotlin.jvm.internal.EnhancedNullability"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->p:Llb/c;

    new-instance v0, Llb/c;

    const-string v1, "kotlin.jvm.internal.EnhancedMutability"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lva/x;->q:Llb/c;

    return-void
.end method

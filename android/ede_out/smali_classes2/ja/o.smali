.class public final Lja/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/o$a;
    }
.end annotation


# static fields
.field public static final a:Llb/f;

.field public static final b:Llb/f;

.field public static final c:Llb/f;

.field public static final d:Llb/f;

.field public static final e:Llb/c;

.field public static final f:Llb/c;

.field public static final g:Llb/c;

.field public static final h:Llb/c;

.field public static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Llb/f;

.field public static final k:Llb/c;

.field public static final l:Llb/c;

.field public static final m:Llb/c;

.field public static final n:Llb/c;

.field public static final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Llb/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "field"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    const-string v0, "value"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    const-string v0, "values"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v0

    sput-object v0, Lja/o;->a:Llb/f;

    const-string v0, "entries"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v0

    sput-object v0, Lja/o;->b:Llb/f;

    const-string v0, "valueOf"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v0

    sput-object v0, Lja/o;->c:Llb/f;

    const-string v0, "copy"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    const-string v0, "hashCode"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    const-string v0, "code"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    const-string v0, "count"

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v0

    sput-object v0, Lja/o;->d:Llb/f;

    new-instance v0, Llb/c;

    const-string v1, "<dynamic>"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    new-instance v0, Llb/c;

    const-string v1, "kotlin.coroutines"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lja/o;->e:Llb/c;

    new-instance v1, Llb/c;

    const-string v2, "kotlin.coroutines.jvm.internal"

    invoke-direct {v1, v2}, Llb/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Llb/c;

    const-string v2, "kotlin.coroutines.intrinsics"

    invoke-direct {v1, v2}, Llb/c;-><init>(Ljava/lang/String;)V

    const-string v1, "Continuation"

    invoke-static {v1}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Llb/c;->c(Llb/f;)Llb/c;

    move-result-object v1

    sput-object v1, Lja/o;->f:Llb/c;

    new-instance v1, Llb/c;

    const-string v2, "kotlin.Result"

    invoke-direct {v1, v2}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v1, Lja/o;->g:Llb/c;

    new-instance v1, Llb/c;

    const-string v2, "kotlin.reflect"

    invoke-direct {v1, v2}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v1, Lja/o;->h:Llb/c;

    const-string v2, "KProperty"

    const-string v3, "KMutableProperty"

    const-string v4, "KFunction"

    const-string v5, "KSuspendFunction"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lja/o;->i:Ljava/util/List;

    const-string v2, "kotlin"

    invoke-static {v2}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v2

    sput-object v2, Lja/o;->j:Llb/f;

    invoke-static {v2}, Llb/c;->j(Llb/f;)Llb/c;

    move-result-object v2

    sput-object v2, Lja/o;->k:Llb/c;

    const-string v3, "annotation"

    invoke-static {v3}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Llb/c;->c(Llb/f;)Llb/c;

    move-result-object v3

    sput-object v3, Lja/o;->l:Llb/c;

    const-string v4, "collections"

    invoke-static {v4}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v4

    invoke-virtual {v2, v4}, Llb/c;->c(Llb/f;)Llb/c;

    move-result-object v4

    sput-object v4, Lja/o;->m:Llb/c;

    const-string v5, "ranges"

    invoke-static {v5}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v5

    invoke-virtual {v2, v5}, Llb/c;->c(Llb/f;)Llb/c;

    move-result-object v5

    sput-object v5, Lja/o;->n:Llb/c;

    const-string v6, "text"

    invoke-static {v6}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v6

    invoke-virtual {v2, v6}, Llb/c;->c(Llb/f;)Llb/c;

    const-string v6, "internal"

    invoke-static {v6}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v6

    invoke-virtual {v2, v6}, Llb/c;->c(Llb/f;)Llb/c;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [Llb/c;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v4, v7, v2

    const/4 v2, 0x2

    aput-object v5, v7, v2

    const/4 v2, 0x3

    aput-object v3, v7, v2

    const/4 v2, 0x4

    aput-object v1, v7, v2

    const/4 v1, 0x5

    aput-object v6, v7, v1

    const/4 v1, 0x6

    aput-object v0, v7, v1

    invoke-static {v7}, Lx5/a;->s([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lja/o;->o:Ljava/util/Set;

    return-void
.end method

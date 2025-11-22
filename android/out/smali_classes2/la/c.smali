.class public final Lla/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lla/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Llb/b;

.field public static final f:Llb/c;

.field public static final g:Llb/b;

.field public static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Llb/d;",
            "Llb/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Llb/d;",
            "Llb/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Llb/d;",
            "Llb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Llb/d;",
            "Llb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Llb/b;",
            "Llb/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Llb/b;",
            "Llb/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lla/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lka/c;->d:Lka/c;

    .line 1
    iget-object v2, v1, Lka/c;->a:Llb/c;

    .line 2
    invoke-virtual {v2}, Llb/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, v1, Lka/c;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lla/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lka/c;->f:Lka/c;

    .line 5
    iget-object v3, v1, Lka/c;->a:Llb/c;

    .line 6
    invoke-virtual {v3}, Llb/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, v1, Lka/c;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lla/c;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lka/c;->e:Lka/c;

    .line 9
    iget-object v3, v1, Lka/c;->a:Llb/c;

    .line 10
    invoke-virtual {v3}, Llb/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, v1, Lka/c;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lla/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lka/c;->g:Lka/c;

    .line 13
    iget-object v3, v1, Lka/c;->a:Llb/c;

    .line 14
    invoke-virtual {v3}, Llb/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, v1, Lka/c;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lla/c;->d:Ljava/lang/String;

    new-instance v0, Llb/c;

    const-string v1, "kotlin.jvm.functions.FunctionN"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v0

    sput-object v0, Lla/c;->e:Llb/b;

    invoke-virtual {v0}, Llb/b;->b()Llb/c;

    move-result-object v0

    const-string v1, "FUNCTION_N_CLASS_ID.asSingleFqName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lla/c;->f:Llb/c;

    .line 17
    sget-object v0, Llb/i;->n:Llb/b;

    .line 18
    sput-object v0, Lla/c;->g:Llb/b;

    const-class v0, Ljava/lang/Class;

    invoke-static {v0}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lla/c;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lla/c;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lla/c;->j:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lla/c;->k:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lla/c;->l:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lla/c;->m:Ljava/util/HashMap;

    const/16 v0, 0x8

    new-array v0, v0, [Lla/c$a;

    sget-object v1, Lja/o$a;->A:Llb/c;

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    sget-object v3, Lja/o$a;->I:Llb/c;

    new-instance v4, Llb/b;

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v5

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v6

    const-string v7, "kotlinReadOnly.packageFqName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Llb/e;->a(Llb/c;Llb/c;)Llb/c;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6}, Llb/b;-><init>(Llb/c;Llb/c;Z)V

    new-instance v3, Lla/c$a;

    const-class v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    move-result-object v5

    invoke-direct {v3, v5, v1, v4}, Lla/c$a;-><init>(Llb/b;Llb/b;Llb/b;)V

    aput-object v3, v0, v6

    sget-object v1, Lja/o$a;->z:Llb/c;

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    sget-object v3, Lja/o$a;->H:Llb/c;

    new-instance v4, Llb/b;

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v5

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v8}, Llb/e;->a(Llb/c;Llb/c;)Llb/c;

    move-result-object v3

    invoke-direct {v4, v5, v3, v6}, Llb/b;-><init>(Llb/c;Llb/c;Z)V

    new-instance v3, Lla/c$a;

    const-class v5, Ljava/util/Iterator;

    invoke-static {v5}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    move-result-object v5

    invoke-direct {v3, v5, v1, v4}, Lla/c$a;-><init>(Llb/b;Llb/b;Llb/b;)V

    const/4 v1, 0x1

    aput-object v3, v0, v1

    sget-object v1, Lja/o$a;->B:Llb/c;

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    sget-object v3, Lja/o$a;->J:Llb/c;

    new-instance v4, Llb/b;

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v5

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v8}, Llb/e;->a(Llb/c;Llb/c;)Llb/c;

    move-result-object v3

    invoke-direct {v4, v5, v3, v6}, Llb/b;-><init>(Llb/c;Llb/c;Z)V

    new-instance v3, Lla/c$a;

    const-class v5, Ljava/util/Collection;

    invoke-static {v5}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    move-result-object v5

    invoke-direct {v3, v5, v1, v4}, Lla/c$a;-><init>(Llb/b;Llb/b;Llb/b;)V

    const/4 v1, 0x2

    aput-object v3, v0, v1

    sget-object v1, Lja/o$a;->C:Llb/c;

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    sget-object v3, Lja/o$a;->K:Llb/c;

    new-instance v4, Llb/b;

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v5

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v8}, Llb/e;->a(Llb/c;Llb/c;)Llb/c;

    move-result-object v3

    invoke-direct {v4, v5, v3, v6}, Llb/b;-><init>(Llb/c;Llb/c;Z)V

    new-instance v3, Lla/c$a;

    const-class v5, Ljava/util/List;

    invoke-static {v5}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    move-result-object v5

    invoke-direct {v3, v5, v1, v4}, Lla/c$a;-><init>(Llb/b;Llb/b;Llb/b;)V

    const/4 v1, 0x3

    aput-object v3, v0, v1

    sget-object v1, Lja/o$a;->E:Llb/c;

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    sget-object v3, Lja/o$a;->M:Llb/c;

    new-instance v4, Llb/b;

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v5

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v8}, Llb/e;->a(Llb/c;Llb/c;)Llb/c;

    move-result-object v3

    invoke-direct {v4, v5, v3, v6}, Llb/b;-><init>(Llb/c;Llb/c;Z)V

    new-instance v3, Lla/c$a;

    const-class v5, Ljava/util/Set;

    invoke-static {v5}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    move-result-object v5

    invoke-direct {v3, v5, v1, v4}, Lla/c$a;-><init>(Llb/b;Llb/b;Llb/b;)V

    const/4 v1, 0x4

    aput-object v3, v0, v1

    sget-object v1, Lja/o$a;->D:Llb/c;

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    sget-object v3, Lja/o$a;->L:Llb/c;

    new-instance v4, Llb/b;

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v5

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v8}, Llb/e;->a(Llb/c;Llb/c;)Llb/c;

    move-result-object v3

    invoke-direct {v4, v5, v3, v6}, Llb/b;-><init>(Llb/c;Llb/c;Z)V

    new-instance v3, Lla/c$a;

    const-class v5, Ljava/util/ListIterator;

    invoke-static {v5}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    move-result-object v5

    invoke-direct {v3, v5, v1, v4}, Lla/c$a;-><init>(Llb/b;Llb/b;Llb/b;)V

    const/4 v1, 0x5

    aput-object v3, v0, v1

    sget-object v1, Lja/o$a;->F:Llb/c;

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v3

    sget-object v4, Lja/o$a;->N:Llb/c;

    new-instance v5, Llb/b;

    invoke-virtual {v3}, Llb/b;->h()Llb/c;

    move-result-object v8

    invoke-virtual {v3}, Llb/b;->h()Llb/c;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Llb/e;->a(Llb/c;Llb/c;)Llb/c;

    move-result-object v4

    invoke-direct {v5, v8, v4, v6}, Llb/b;-><init>(Llb/c;Llb/c;Z)V

    new-instance v4, Lla/c$a;

    const-class v8, Ljava/util/Map;

    invoke-static {v8}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    move-result-object v8

    invoke-direct {v4, v8, v3, v5}, Lla/c$a;-><init>(Llb/b;Llb/b;Llb/b;)V

    const/4 v3, 0x6

    aput-object v4, v0, v3

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    sget-object v3, Lja/o$a;->G:Llb/c;

    invoke-virtual {v3}, Llb/c;->f()Llb/f;

    move-result-object v3

    invoke-virtual {v1, v3}, Llb/b;->d(Llb/f;)Llb/b;

    move-result-object v1

    sget-object v3, Lja/o$a;->O:Llb/c;

    new-instance v4, Llb/b;

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v5

    invoke-virtual {v1}, Llb/b;->h()Llb/c;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v8}, Llb/e;->a(Llb/c;Llb/c;)Llb/c;

    move-result-object v3

    invoke-direct {v4, v5, v3, v6}, Llb/b;-><init>(Llb/c;Llb/c;Z)V

    new-instance v3, Lla/c$a;

    const-class v5, Ljava/util/Map$Entry;

    invoke-static {v5}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    move-result-object v5

    invoke-direct {v3, v5, v1, v4}, Lla/c$a;-><init>(Llb/b;Llb/b;Llb/b;)V

    const/4 v1, 0x7

    aput-object v3, v0, v1

    invoke-static {v0}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lla/c;->n:Ljava/util/List;

    const-class v1, Ljava/lang/Object;

    sget-object v3, Lja/o$a;->a:Llb/d;

    invoke-static {v1, v3}, Lla/c;->c(Ljava/lang/Class;Llb/d;)V

    const-class v1, Ljava/lang/String;

    sget-object v3, Lja/o$a;->f:Llb/d;

    invoke-static {v1, v3}, Lla/c;->c(Ljava/lang/Class;Llb/d;)V

    const-class v1, Ljava/lang/CharSequence;

    sget-object v3, Lja/o$a;->e:Llb/d;

    invoke-static {v1, v3}, Lla/c;->c(Ljava/lang/Class;Llb/d;)V

    sget-object v1, Lja/o$a;->k:Llb/c;

    .line 19
    const-class v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    move-result-object v3

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    invoke-static {v3, v1}, Lla/c;->a(Llb/b;Llb/b;)V

    .line 20
    const-class v1, Ljava/lang/Cloneable;

    sget-object v3, Lja/o$a;->c:Llb/d;

    invoke-static {v1, v3}, Lla/c;->c(Ljava/lang/Class;Llb/d;)V

    const-class v1, Ljava/lang/Number;

    sget-object v3, Lja/o$a;->i:Llb/d;

    invoke-static {v1, v3}, Lla/c;->c(Ljava/lang/Class;Llb/d;)V

    sget-object v1, Lja/o$a;->l:Llb/c;

    .line 21
    const-class v3, Ljava/lang/Comparable;

    invoke-static {v3}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    move-result-object v3

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    invoke-static {v3, v1}, Lla/c;->a(Llb/b;Llb/b;)V

    .line 22
    const-class v1, Ljava/lang/Enum;

    sget-object v3, Lja/o$a;->j:Llb/d;

    invoke-static {v1, v3}, Lla/c;->c(Ljava/lang/Class;Llb/d;)V

    sget-object v1, Lja/o$a;->s:Llb/c;

    .line 23
    const-class v3, Ljava/lang/annotation/Annotation;

    invoke-static {v3}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    move-result-object v3

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    invoke-static {v3, v1}, Lla/c;->a(Llb/b;Llb/b;)V

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lla/c$a;

    .line 25
    iget-object v3, v1, Lla/c$a;->a:Llb/b;

    .line 26
    iget-object v4, v1, Lla/c$a;->b:Llb/b;

    invoke-static {v3, v4}, Lla/c;->a(Llb/b;Llb/b;)V

    iget-object v1, v1, Lla/c$a;->c:Llb/b;

    invoke-virtual {v1}, Llb/b;->b()Llb/c;

    move-result-object v5

    const-string v7, "mutableClassId.asSingleFqName()"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3}, Lla/c;->b(Llb/c;Llb/b;)V

    sget-object v3, Lla/c;->l:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lla/c;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Llb/b;->b()Llb/c;

    move-result-object v3

    const-string v4, "readOnlyClassId.asSingleFqName()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Llb/b;->b()Llb/c;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Llb/b;->b()Llb/c;

    move-result-object v1

    invoke-virtual {v1}, Llb/c;->i()Llb/d;

    move-result-object v1

    const-string v5, "mutableClassId.asSingleFqName().toUnsafe()"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lla/c;->j:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Llb/c;->i()Llb/d;

    move-result-object v1

    const-string v3, "readOnlyFqName.toUnsafe()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lla/c;->k:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Ltb/c;->values()[Ltb/c;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ltb/c;->t()Llb/c;

    move-result-object v5

    invoke-static {v5}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v5

    invoke-virtual {v4}, Ltb/c;->r()Lja/l;

    move-result-object v4

    const-string v7, "jvmType.primitiveType"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v7, Lja/o;->k:Llb/c;

    iget-object v4, v4, Lja/l;->a:Llb/f;

    invoke-virtual {v7, v4}, Llb/c;->c(Llb/f;)Llb/c;

    move-result-object v4

    .line 29
    invoke-static {v4}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v4

    invoke-static {v5, v4}, Lla/c;->a(Llb/b;Llb/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 30
    :cond_1
    sget-object v0, Lja/c;->a:Ljava/util/LinkedHashSet;

    .line 31
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llb/b;

    new-instance v3, Llb/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "kotlin.jvm.internal."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Llb/b;->j()Llb/f;

    move-result-object v5

    invoke-virtual {v5}, Llb/f;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "CompanionObject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Llb/c;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v3

    sget-object v4, Llb/h;->b:Llb/f;

    invoke-virtual {v1, v4}, Llb/b;->d(Llb/f;)Llb/b;

    move-result-object v1

    invoke-static {v3, v1}, Lla/c;->a(Llb/b;Llb/b;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    new-instance v1, Llb/c;

    const-string v3, "kotlin.jvm.functions.Function"

    .line 32
    invoke-static {v3, v0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Llb/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    .line 33
    new-instance v3, Llb/b;

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Function"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-static {v4}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v4

    sget-object v5, Lja/o;->k:Llb/c;

    invoke-direct {v3, v5, v4}, Llb/b;-><init>(Llb/c;Llb/f;)V

    .line 36
    invoke-static {v1, v3}, Lla/c;->a(Llb/b;Llb/b;)V

    new-instance v1, Llb/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lla/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Llb/c;-><init>(Ljava/lang/String;)V

    sget-object v3, Lla/c;->g:Llb/b;

    invoke-static {v1, v3}, Lla/c;->b(Llb/c;Llb/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    const/16 v0, 0x16

    if-ge v6, v0, :cond_4

    sget-object v0, Lka/c;->g:Lka/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    iget-object v3, v0, Lka/c;->a:Llb/c;

    .line 38
    invoke-virtual {v3}, Llb/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lka/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Llb/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Llb/c;-><init>(Ljava/lang/String;)V

    sget-object v0, Lla/c;->g:Llb/b;

    invoke-static {v1, v0}, Lla/c;->b(Llb/c;Llb/b;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    sget-object v0, Lja/o$a;->b:Llb/d;

    invoke-virtual {v0}, Llb/d;->h()Llb/c;

    move-result-object v0

    const-string v1, "nothing.toSafe()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    invoke-static {v1}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    move-result-object v1

    invoke-static {v0, v1}, Lla/c;->b(Llb/c;Llb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Llb/b;Llb/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Llb/b;->b()Llb/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Llb/c;->i()Llb/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "javaClassId.asSingleFqName().toUnsafe()"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lla/c;->h:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Llb/b;->b()Llb/c;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "kotlinClassId.asSingleFqName()"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p0}, Lla/c;->b(Llb/c;Llb/b;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static b(Llb/c;Llb/b;)V
    .locals 1

    invoke-virtual {p0}, Llb/c;->i()Llb/d;

    move-result-object p0

    const-string v0, "kotlinFqNameUnsafe.toUnsafe()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lla/c;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/Class;Llb/d;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Llb/d;->h()Llb/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "kotlinFqName.toSafe()"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p1}, Llb/b;->l(Llb/c;)Llb/b;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p0, p1}, Lla/c;->a(Llb/b;Llb/b;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static d(Ljava/lang/Class;)Llb/b;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Llb/c;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Llb/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lla/c;->d(Ljava/lang/Class;)Llb/b;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Llb/b;->d(Llb/f;)Llb/b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static e(Llb/d;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Llb/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    invoke-static {p0, p1, v0}, Lmc/n;->b0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-eqz p1, :cond_2

    .line 23
    .line 24
    const/16 p1, 0x30

    .line 25
    .line 26
    invoke-static {p0, p1}, Lmc/n;->Z(Ljava/lang/String;C)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    invoke-static {p0}, Lmc/i;->t(Ljava/lang/String;)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    const/16 p1, 0x17

    .line 43
    .line 44
    if-lt p0, p1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_1
    return v0

    .line 49
    :cond_2
    return v1

    .line 50
    :cond_3
    const/4 p0, 0x4

    .line 51
    invoke-static {p0}, Llb/d;->a(I)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    throw p0
.end method

.method public static f(Llb/c;)Llb/b;
    .locals 1

    sget-object v0, Lla/c;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Llb/c;->i()Llb/d;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llb/b;

    return-object p0
.end method

.method public static g(Llb/d;)Llb/b;
    .locals 1

    sget-object v0, Lla/c;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lla/c;->e(Llb/d;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lla/c;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lla/c;->e(Llb/d;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    sget-object p0, Lla/c;->e:Llb/b;

    goto :goto_2

    :cond_1
    sget-object v0, Lla/c;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lla/c;->e(Llb/d;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lla/c;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lla/c;->e(Llb/d;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    sget-object p0, Lla/c;->g:Llb/b;

    goto :goto_2

    :cond_3
    sget-object v0, Lla/c;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llb/b;

    :goto_2
    return-object p0
.end method

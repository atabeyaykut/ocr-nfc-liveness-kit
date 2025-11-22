.class public final Lcom/bumptech/glide/h;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field public static final k:Lcom/bumptech/glide/a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final a:Ly0/b;

.field public final b:Lq1/f;

.field public final c:La2/b;

.field public final d:Lcom/bumptech/glide/b$a;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm1/f<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/p<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final g:Lx0/m;

.field public final h:Lcom/bumptech/glide/i;

.field public final i:I

.field public j:Lm1/g;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/a;

    invoke-direct {v0}, Lcom/bumptech/glide/a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/h;->k:Lcom/bumptech/glide/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ly0/b;Lcom/bumptech/glide/l;La2/b;Lcom/bumptech/glide/c;Landroidx/collection/ArrayMap;Ljava/util/List;Lx0/m;Lcom/bumptech/glide/i;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ly0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # La2/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/collection/ArrayMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lx0/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/bumptech/glide/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bumptech/glide/h;->a:Ly0/b;

    iput-object p4, p0, Lcom/bumptech/glide/h;->c:La2/b;

    iput-object p5, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/b$a;

    iput-object p7, p0, Lcom/bumptech/glide/h;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/bumptech/glide/h;->f:Ljava/util/Map;

    iput-object p8, p0, Lcom/bumptech/glide/h;->g:Lx0/m;

    iput-object p9, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/i;

    iput p10, p0, Lcom/bumptech/glide/h;->i:I

    .line 1
    new-instance p1, Lq1/f;

    invoke-direct {p1, p3}, Lq1/f;-><init>(Lq1/g;)V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/h;->b:Lq1/f;

    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lq1/f;

    invoke-virtual {v0}, Lq1/f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/k;

    return-object v0
.end method

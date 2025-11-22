.class public final Lk0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lj0/c;

.field public final d:Lj0/d;

.field public final e:Lj0/f;

.field public final f:Lj0/f;

.field public final g:Lj0/b;

.field public final h:I

.field public final i:I

.field public final j:F

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj0/b;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lj0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILj0/c;Lj0/d;Lj0/f;Lj0/f;Lj0/b;IIFLjava/util/ArrayList;Lj0/b;Z)V
    .locals 0
    .param p12    # Lj0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/e;->a:Ljava/lang/String;

    iput p2, p0, Lk0/e;->b:I

    iput-object p3, p0, Lk0/e;->c:Lj0/c;

    iput-object p4, p0, Lk0/e;->d:Lj0/d;

    iput-object p5, p0, Lk0/e;->e:Lj0/f;

    iput-object p6, p0, Lk0/e;->f:Lj0/f;

    iput-object p7, p0, Lk0/e;->g:Lj0/b;

    iput p8, p0, Lk0/e;->h:I

    iput p9, p0, Lk0/e;->i:I

    iput p10, p0, Lk0/e;->j:F

    iput-object p11, p0, Lk0/e;->k:Ljava/util/List;

    iput-object p12, p0, Lk0/e;->l:Lj0/b;

    iput-boolean p13, p0, Lk0/e;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Ld0/l;Ll0/b;)Lf0/c;
    .locals 1

    new-instance v0, Lf0/i;

    invoke-direct {v0, p1, p2, p0}, Lf0/i;-><init>(Ld0/l;Ll0/b;Lk0/e;)V

    return-object v0
.end method

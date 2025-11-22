.class public final Lk0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj0/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lj0/a;

.field public final e:Lj0/d;

.field public final f:Lj0/b;

.field public final g:I

.field public final h:I

.field public final i:F

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lj0/b;Ljava/util/ArrayList;Lj0/a;Lj0/d;Lj0/b;IIFZ)V
    .locals 0
    .param p2    # Lj0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lk0/o;->b:Lj0/b;

    iput-object p3, p0, Lk0/o;->c:Ljava/util/List;

    iput-object p4, p0, Lk0/o;->d:Lj0/a;

    iput-object p5, p0, Lk0/o;->e:Lj0/d;

    iput-object p6, p0, Lk0/o;->f:Lj0/b;

    iput p7, p0, Lk0/o;->g:I

    iput p8, p0, Lk0/o;->h:I

    iput p9, p0, Lk0/o;->i:F

    iput-boolean p10, p0, Lk0/o;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Ld0/l;Ll0/b;)Lf0/c;
    .locals 1

    new-instance v0, Lf0/r;

    invoke-direct {v0, p1, p2, p0}, Lf0/r;-><init>(Ld0/l;Ll0/b;Lk0/o;)V

    return-object v0
.end method

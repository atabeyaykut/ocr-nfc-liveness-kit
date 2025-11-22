.class public final Lk0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/b;


# instance fields
.field public final a:Z

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Ljava/lang/String;

.field public final d:Lj0/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Lj0/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lj0/a;Lj0/d;Z)V
    .locals 0
    .param p4    # Lj0/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lj0/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/l;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lk0/l;->a:Z

    iput-object p3, p0, Lk0/l;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lk0/l;->d:Lj0/a;

    iput-object p5, p0, Lk0/l;->e:Lj0/d;

    iput-boolean p6, p0, Lk0/l;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Ld0/l;Ll0/b;)Lf0/c;
    .locals 1

    new-instance v0, Lf0/g;

    invoke-direct {v0, p1, p2, p0}, Lf0/g;-><init>(Ld0/l;Ll0/b;Lk0/l;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ShapeFill{color=, fillEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lk0/l;->a:Z

    .line 9
    .line 10
    const/16 v2, 0x7d

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/b;->f(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

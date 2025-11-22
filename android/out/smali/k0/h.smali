.class public final Lk0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lj0/b;

.field public final d:Lj0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lj0/b;

.field public final f:Lj0/b;

.field public final g:Lj0/b;

.field public final h:Lj0/b;

.field public final i:Lj0/b;

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILj0/b;Lj0/m;Lj0/b;Lj0/b;Lj0/b;Lj0/b;Lj0/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lj0/b;",
            "Lj0/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lj0/b;",
            "Lj0/b;",
            "Lj0/b;",
            "Lj0/b;",
            "Lj0/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/h;->a:Ljava/lang/String;

    iput p2, p0, Lk0/h;->b:I

    iput-object p3, p0, Lk0/h;->c:Lj0/b;

    iput-object p4, p0, Lk0/h;->d:Lj0/m;

    iput-object p5, p0, Lk0/h;->e:Lj0/b;

    iput-object p6, p0, Lk0/h;->f:Lj0/b;

    iput-object p7, p0, Lk0/h;->g:Lj0/b;

    iput-object p8, p0, Lk0/h;->h:Lj0/b;

    iput-object p9, p0, Lk0/h;->i:Lj0/b;

    iput-boolean p10, p0, Lk0/h;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Ld0/l;Ll0/b;)Lf0/c;
    .locals 1

    new-instance v0, Lf0/n;

    invoke-direct {v0, p1, p2, p0}, Lf0/n;-><init>(Ld0/l;Ll0/b;Lk0/h;)V

    return-object v0
.end method

.class public final Lk0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lj0/f;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lj0/m;Lj0/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lj0/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lj0/f;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lk0/a;->b:Lj0/m;

    iput-object p3, p0, Lk0/a;->c:Lj0/f;

    iput-boolean p4, p0, Lk0/a;->d:Z

    iput-boolean p5, p0, Lk0/a;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ld0/l;Ll0/b;)Lf0/c;
    .locals 1

    new-instance v0, Lf0/f;

    invoke-direct {v0, p1, p2, p0}, Lf0/f;-><init>(Ld0/l;Ll0/b;Lk0/a;)V

    return-object v0
.end method

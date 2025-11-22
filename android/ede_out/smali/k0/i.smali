.class public final Lk0/i;
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

.field public final c:Lj0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lj0/b;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lj0/m;Lj0/f;Lj0/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lk0/i;->b:Lj0/m;

    iput-object p3, p0, Lk0/i;->c:Lj0/m;

    iput-object p4, p0, Lk0/i;->d:Lj0/b;

    iput-boolean p5, p0, Lk0/i;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ld0/l;Ll0/b;)Lf0/c;
    .locals 1

    new-instance v0, Lf0/o;

    invoke-direct {v0, p1, p2, p0}, Lf0/o;-><init>(Ld0/l;Ll0/b;Lk0/i;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RectangleShape{position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk0/i;->b:Lj0/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/i;->c:Lj0/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

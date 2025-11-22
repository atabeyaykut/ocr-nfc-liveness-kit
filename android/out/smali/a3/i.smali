.class public final synthetic La3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b$a;


# instance fields
.field public final synthetic a:La3/m;

.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Lu2/s;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(La3/m;Ljava/lang/Iterable;Lu2/s;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/i;->a:La3/m;

    iput-object p2, p0, La3/i;->b:Ljava/lang/Iterable;

    iput-object p3, p0, La3/i;->c:Lu2/s;

    iput-wide p4, p0, La3/i;->d:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, La3/i;->a:La3/m;

    iget-object v1, v0, La3/m;->c:Lb3/d;

    iget-object v2, p0, La3/i;->b:Ljava/lang/Iterable;

    invoke-interface {v1, v2}, Lb3/d;->k0(Ljava/lang/Iterable;)V

    iget-object v0, v0, La3/m;->g:Ld3/a;

    invoke-interface {v0}, Ld3/a;->a()J

    move-result-wide v2

    iget-wide v4, p0, La3/i;->d:J

    add-long/2addr v2, v4

    iget-object v0, p0, La3/i;->c:Lu2/s;

    invoke-interface {v1, v2, v3, v0}, Lb3/d;->f0(JLu2/s;)V

    const/4 v0, 0x0

    return-object v0
.end method

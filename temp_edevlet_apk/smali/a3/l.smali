.class public final synthetic La3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b$a;


# instance fields
.field public final synthetic a:La3/m;

.field public final synthetic b:Lu2/s;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(La3/m;Lu2/s;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/l;->a:La3/m;

    iput-object p2, p0, La3/l;->b:Lu2/s;

    iput-wide p3, p0, La3/l;->c:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, La3/l;->a:La3/m;

    iget-object v1, v0, La3/m;->g:Ld3/a;

    invoke-interface {v1}, Ld3/a;->a()J

    move-result-wide v1

    iget-wide v3, p0, La3/l;->c:J

    add-long/2addr v1, v3

    iget-object v0, v0, La3/m;->c:Lb3/d;

    iget-object v3, p0, La3/l;->b:Lu2/s;

    invoke-interface {v0, v1, v2, v3}, Lb3/d;->f0(JLu2/s;)V

    const/4 v0, 0x0

    return-object v0
.end method

.class public final Lh6/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo6/d;

.field public final synthetic b:Lh6/x;


# direct methods
.method public constructor <init>(Lh6/x;Lo6/c;)V
    .locals 0

    iput-object p1, p0, Lh6/w;->b:Lh6/x;

    iput-object p2, p0, Lh6/w;->a:Lo6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lh6/w;->b:Lh6/x;

    iget-object v1, p0, Lh6/w;->a:Lo6/d;

    invoke-static {v0, v1}, Lh6/x;->a(Lh6/x;Lo6/d;)Lh5/k;

    return-void
.end method

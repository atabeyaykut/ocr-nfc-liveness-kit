.class public final Lud/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lud/t;->a(Ljava/lang/Exception;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp9/d;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Lud/t$b;)V
    .locals 0

    iput-object p2, p0, Lud/t$a;->a:Lp9/d;

    iput-object p1, p0, Lud/t$a;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lud/t$a;->a:Lp9/d;

    invoke-static {v0}, Lc5/w;->x(Lp9/d;)Lp9/d;

    move-result-object v0

    iget-object v1, p0, Lud/t$a;->b:Ljava/lang/Exception;

    invoke-static {v1}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

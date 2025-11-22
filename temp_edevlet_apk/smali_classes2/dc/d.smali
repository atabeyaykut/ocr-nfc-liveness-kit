.class public interface abstract Ldc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/d$a;
    }
.end annotation


# static fields
.field public static final a:Ldc/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ldc/l;->b:Ldc/l$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Ldc/l$a;->b:Ldc/m;

    .line 7
    .line 8
    sput-object v0, Ldc/d;->a:Ldc/m;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abstract c(Lcc/e0;Lcc/e0;)Z
.end method

.class public final Lqf/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lqf/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqf/b;

    invoke-direct {v0}, Lqf/b;-><init>()V

    sput-object v0, Lqf/b$a;->a:Lqf/b;

    return-void
.end method

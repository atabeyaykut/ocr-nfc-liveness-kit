.class public final Lua/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lua/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lua/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/b$a;

    invoke-direct {v0}, Lua/b$a;-><init>()V

    sput-object v0, Lua/b$a;->a:Lua/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public interface abstract Ldd/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldd/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:Ldd/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldd/a;

    invoke-direct {v0}, Ldd/a;-><init>()V

    sput-object v0, Ldd/b$a;->a:Ldd/a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

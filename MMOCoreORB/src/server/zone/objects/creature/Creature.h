/*
 *	server/zone/objects/creature/Creature.h generated by engine3 IDL compiler 0.55
 */

#ifndef CREATURE_H_
#define CREATURE_H_

#include "engine/orb/DistributedObjectBroker.h"

class CreatureManagerImplementation;

class Zone;

class Player;

class Armor;

class LairObject;

class CreatureObject;

class CreatureGroup;

#include "CreatureObject.h"

class Creature : public CreatureObject {
public:
	Creature(unsigned long long oid, CreatureGroup* group = NULL);

	void init();

	void unload();

	void updateZone();

	void loadItems();

	bool activate();

	bool isActive();

	void removeFromQueue();

	bool doMovement();

	void doIncapacitate();

	void doStandUp();

	void doAttack(CreatureObject* target, int damage);

	bool attack(CreatureObject* target);

	void deagro();

	void activateRecovery();

	bool doRecovery();

	void doStatesRecovery();

	void queueRespawn();

	void addPatrolPoint(float x, float y, bool doLock = true);

	void resetPatrolPoints(bool doLock = true);

	void setSpawnPosition(float posX, float posZ, float posY, unsigned long long cellid = 0);

	int compareTo(Creature* creature);

	int getType();

	bool isTrainer();

	bool isRecruiter();

	bool isMount();

	bool isActionCreature();

	string& getName();

	int getZoneIndex();

	Zone* getZone();

	CreatureObject* getAggroedCreature();

	unsigned long long getNewItemID();

	unsigned int getRespawnTimer();

	LairObject* getLair();

	bool hasLootCreated();

	void setCreatureManager(CreatureManagerImplementation* manager);

	void setLair(LairObject* Lair);

	void setCreatureGroup(CreatureGroup* group);

	void setObjectFileName(const string& name);

	void setType(int tp);

	void setRespawnTimer(unsigned int seconds);

	void removePlayerFromHarvestList(string& firstName);

	bool canHarvest(string& firstName);

	bool beenLooted();

	void wasLooted();

	void setLootCreated(bool value);

	void setRandomMovement(bool value);

protected:
	Creature(DummyConstructorParameter* param);

	virtual ~Creature();

	string _return_getName;

	friend class CreatureHelper;
};

class CreatureImplementation;

class CreatureAdapter : public CreatureObjectAdapter {
public:
	CreatureAdapter(CreatureImplementation* impl);

	Packet* invokeMethod(sys::uint32 methid, DistributedMethod* method);

	void init();

	void unload();

	void updateZone();

	void loadItems();

	bool activate();

	bool isActive();

	void removeFromQueue();

	bool doMovement();

	void doIncapacitate();

	void doStandUp();

	void doAttack(CreatureObject* target, int damage);

	bool attack(CreatureObject* target);

	void deagro();

	void activateRecovery();

	bool doRecovery();

	void doStatesRecovery();

	void queueRespawn();

	void addPatrolPoint(float x, float y, bool doLock);

	void resetPatrolPoints(bool doLock);

	void setSpawnPosition(float posX, float posZ, float posY, unsigned long long cellid);

	int compareTo(Creature* creature);

	int getType();

	bool isTrainer();

	bool isRecruiter();

	bool isMount();

	bool isActionCreature();

	string& getName();

	int getZoneIndex();

	Zone* getZone();

	CreatureObject* getAggroedCreature();

	unsigned long long getNewItemID();

	unsigned int getRespawnTimer();

	LairObject* getLair();

	bool hasLootCreated();

	void setLair(LairObject* Lair);

	void setCreatureGroup(CreatureGroup* group);

	void setObjectFileName(const string& name);

	void setType(int tp);

	void setRespawnTimer(unsigned int seconds);

	void removePlayerFromHarvestList(string& firstName);

	bool canHarvest(string& firstName);

	bool beenLooted();

	void wasLooted();

	void setLootCreated(bool value);

	void setRandomMovement(bool value);

protected:
	string _param0_setObjectFileName__string_;
	string _param0_removePlayerFromHarvestList__string_;
	string _param0_canHarvest__string_;
};

class CreatureHelper : public DistributedObjectClassHelper, public Singleton<CreatureHelper> {
	static CreatureHelper* staticInitializer;

public:
	CreatureHelper();

	void finalizeHelper();

	DistributedObject* instantiateObject();

	DistributedObjectAdapter* createAdapter(DistributedObjectStub* obj);

	friend class SingletonWrapper<CreatureHelper>;
};

#include "CreatureObjectImplementation.h"

class CreatureServant : public CreatureObjectImplementation {
public:
	Creature* _this;

public:
	CreatureServant(unsigned long long oid);
	virtual ~CreatureServant();

	void _setStub(DistributedObjectStub* stub);
	DistributedObjectStub* _getStub();

};

#endif /*CREATURE_H_*/
